.class public Lcom/android/camera/animation/AnimationDelegate;
.super Ljava/lang/Object;
.source "AnimationDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/animation/AnimationDelegate$AnimationResource;,
        Lcom/android/camera/animation/AnimationDelegate$AnimationType;
    }
.end annotation


# static fields
.field public static final DEFAULT_INTERPOLATOR:Landroid/view/animation/Interpolator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lmiui/maml/animation/interpolater/CubicEaseOutInterpolater;

    invoke-direct {v0}, Lmiui/maml/animation/interpolater/CubicEaseOutInterpolater;-><init>()V

    sput-object v0, Lcom/android/camera/animation/AnimationDelegate;->DEFAULT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
