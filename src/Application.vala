public class Application : Gtk.Application {

    public Application () {
        Object (
            application_id: "com.github.eldhrimer.binder",
            flags: ApplicationFlags.FLAGS_NONE
        );
    }

    protected override void activate () {
        var window = new Binder.Window (this);

        add_window (window);
    }
}
