.class public interface abstract Lcom/android/camera/protocol/ModeProtocol$BackStack;
.super Ljava/lang/Object;
.source "ModeProtocol.java"

# interfaces
.implements Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;


# virtual methods
.method public abstract addInBackStack(Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P::",
            "Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;",
            ">(TP;)V"
        }
    .end annotation
.end method

.method public abstract handleBackStackFromKeyBack()Z
.end method

.method public abstract handleBackStackFromShutter()Z
.end method

.method public abstract handleBackStackFromTapDown(II)Z
.end method

.method public abstract removeBackStack(Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P::",
            "Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;",
            ">(TP;)V"
        }
    .end annotation
.end method
