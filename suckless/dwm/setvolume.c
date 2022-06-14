static void setvolume(const Arg *arg);

void
setvolume(const Arg *arg)
{
    char *cmd = "amixer";
    char *argv[] = {"amixer", "set", "Master", "", NULL};
	if (fork() == 0) {
		if (dpy)
			close(ConnectionNumber(dpy));
		setsid();
        if (arg->i > 0) {
            argv[3] = "5%+";
        }
        if (arg->i < 0) {
            argv[3] = "5%-";
        }
        if (arg->i == 0) {
            argv[3] = "toggle";
        }
        execvp(cmd, argv);
		fprintf(stderr, "dwm: execvp %s", ((char **)arg->v)[0]);
		perror(" failed");
		exit(EXIT_SUCCESS);
	}
}
