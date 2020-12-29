# Students

Again a simple students application but now written in Vala using mason/ninja to build.

# Build

    meson build
    cd build
    ninja

This will output an application called students. Run it with:

    ./students

When you type end it will show the averages per course per student.

# Evaluation

The good:

* Looks like Java so easy to learn.
* Loads of documentation.
* Delegates are a nice addition.
* Errors as enumerated type instead of class is nice.
* Signals. Eventing system.

The bad:

* Needed to use `meson` for configuring `ninja` for building. Confusing and time costly. 

The ugly:

* None!