.class public interface abstract Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;
.super Ljava/lang/Object;
.source "ModeProtocol.java"

# interfaces
.implements Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;


# virtual methods
.method public abstract delegateEvent(I)V
.end method

.method public abstract getActiveFragment(I)I
    .param p1    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param
.end method

.method public abstract getAnimationComposite()Lcom/android/camera/animation/AnimationComposite;
.end method
