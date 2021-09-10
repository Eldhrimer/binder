public class Binder.Window : Gtk.ApplicationWindow {
	public GLib.Settings settings;

	public Window (Application app) {
		Object (
			application: app
		);
	}

	construct {
	 	title = "Binder";
	 	window_position = Gtk.WindowPosition.CENTER;

	 	settings = new GLib.Settings ("com.github.eldhrimer.binder");
	 	move (settings.get_int ("pos-x"), settings.get_int ("pos-y"));
	 	resize (settings.get_int ("window-width"), settings.get_int ("window-height"));

		delete_event.connect (e => {
			return before_destroy ();
		});

	 	show_all ();
	}

	public bool before_destroy () {
		int width, height, x, y;

		get_size (out width, out height);
		get_position (out x, out y);

		settings.set_int ("pos-x", x);
		settings.set_int ("pos-y", y);
		settings.set_int ("window-width", width);
		settings.set_int ("window-height", height);
		return false;
	}
}
