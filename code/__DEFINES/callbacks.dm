#define GLOBAL_PROC "some_magic_bullshit"
/// A shorthand for the callback datum, [documented here](datum/callback.html)
#define CALLBACK new /datum/callback
#define INVOKE_ASYNC world.ImmediateInvokeAsync
<<<<<<< HEAD
=======
/// like CALLBACK but specifically for verb callbacks
#define VERB_CALLBACK new /datum/callback/verb_callback

>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
#define CALLBACK_NEW(typepath, args) CALLBACK(GLOBAL_PROC, /proc/___callbacknew, typepath, args)