project('students', 'vala', 'c')

dependencies = [
    dependency('glib-2.0'),
    dependency('gobject-2.0'),
    dependency('gee-0.8')
]

sources = files(
  'src/App.vala',
  'src/Course.vala',
  'src/Student.vala',
)

executable('students', sources, dependencies: dependencies)
