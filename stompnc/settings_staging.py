# Django settings for stompnc project.

# Temporarily show emails in the console during testing
 # EMAIL_BACKEND = 'django.core.mail.backends.console.EmailBackend'

#EMAIL_USE_TLS       = True
#EMAIL_HOST          = 'smtp.gmail.com'
#EMAIL_HOST_USER     = 'admin@stompthemonsternc.org'
#EMAIL_HOST_PASSWORD = 'efikeba5alamos'
#EMAIL_PORT          = 587

DATABASE_HOST = os.environ['DATABASE_HOST']
DATABASE_PASSWORD = os.environ['DATABASE_PASSWORD']
DATABASE_USER = os.environ['DATABASE_USER']
DATABASE_PORT = os.environ['DATABASE_PORT']
DATABASE_NAME = os.environ['DATABASE_NAME']

DEBUG = True
TEMPLATE_DEBUG = DEBUG

# INTERNAL_IPS = ('127.0.0.1',)

ADMINS = (
     ('Spencer Strombotne', 'admin@stompthemonsternc.org'),
)

MANAGERS = ADMINS


DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.mysql', # Add 'postgresql_psycopg2', 'mysql', 'sqlite3' or 'oracle'.
        'NAME': DATABASE_NAME,                      # Or path to database file if using sqlite3.
        'USER': DATABASE_USER,                      # Not used with sqlite3.
        'PASSWORD': DATABASE_PASSWORD,                  # Not used with sqlite3.
        'HOST': DATABASE_HOST,                      # Set to empty string for localhost. Not used with sqlite3.
        'PORT': DATABASE_PASSWORD,                      # Set to empty string for default. Not used with sqlite3.
    }
}


# Local time zone for this installation. Choices can be found here:
# http://en.wikipedia.org/wiki/List_of_tz_zones_by_name
# although not all choices may be available on all operating systems.
# In a Windows environment this must be set to your system time zone.
TIME_ZONE = 'America/New_York'

# Language code for this installation. All choices can be found here:
# http://www.i18nguy.com/unicode/language-identifiers.html
LANGUAGE_CODE = 'en-us'

SITE_ID = 1

# If you set this to False, Django will make some optimizations so as not
# to load the internationalization machinery.
USE_I18N = True

# If you set this to False, Django will not format dates, numbers and
# calendars according to the current locale.
USE_L10N = True

# If you set this to False, Django will not use timezone-aware datetimes.
USE_TZ = True

# Absolute filesystem path to the directory that will hold user-uploaded files.
# Example: "/home/media/media.lawrence.com/media/"
MEDIA_ROOT = '/home/stompthemonsternc/stompnc/app/media/'

# URL that handles the media served from MEDIA_ROOT. Make sure to use a
# trailing slash.
# Examples: "http://media.lawrence.com/media/", "http://example.com/media/"
MEDIA_URL = '/media/'

# Absolute path to the directory static files should be collected to.
# Don't put anything in this directory yourself; store your static files
# in apps' "static/" subdirectories and in STATICFILES_DIRS.
# Example: "/home/media/media.lawrence.com/static/"
STATIC_ROOT = '/home/stompthemonsternc/stompnc/app/static/'

# URL prefix for static files.
# Example: "http://media.lawrence.com/static/"
STATIC_URL = '/static/'

# Additional locations of static files
STATICFILES_DIRS = (
    # Put strings here, like "/home/html/static" or "C:/www/django/static".
    # Always use forward slashes, even on Windows.
    # Don't forget to use absolute paths, not relative paths.
    '/home/stompthemonsternc/stompnc/app/site-resources/',
)

ROOT_URLCONF = 'stompnc.urls'

# Python dotted path to the WSGI application used by Django's runserver.
WSGI_APPLICATION = 'stompnc.wsgi.application'

TEMPLATE_DIRS = (
    '/home/stompthemonsternc/stompnc/app/templates'
)


# A sample logging configuration. The only tangible logging
# performed by this configuration is to send an email to
# the site admins on every HTTP 500 error when DEBUG=False.
# See http://docs.djangoproject.com/en/dev/topics/logging for
# more details on how to customize your logging configuration.
LOGGING = {
    'version': 1,
    'disable_existing_loggers': False,
    'filters': {
        'require_debug_false': {
            '()': 'django.utils.log.RequireDebugFalse'
        }
    },
    'handlers': {
        'mail_admins': {
            'level': 'ERROR',
            'filters': ['require_debug_false'],
            'class': 'django.utils.log.AdminEmailHandler'
        }
    },
    'loggers': {
        'django.request': {
            'handlers': ['mail_admins'],
            'level': 'ERROR',
            'propagate': True,
        },
    }
}

