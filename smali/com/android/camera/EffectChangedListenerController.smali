.class public Lcom/android/camera/EffectChangedListenerController;
.super Ljava/lang/Object;
.source "EffectChangedListenerController.java"


# static fields
.field private static mEffectChangedListenerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/camera/effect/EffectController$EffectChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private static mHoldKey:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/camera/EffectChangedListenerController;->mEffectChangedListenerMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addEffectChangedListener(Lcom/android/camera/effect/EffectController$EffectChangedListener;)V
    .locals 2

    sget-object v0, Lcom/android/camera/EffectChangedListenerController;->mEffectChangedListenerMap:Ljava/util/Map;

    sget v1, Lcom/android/camera/EffectChangedListenerController;->mHoldKey:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static removeEffectChangedListenerMap(I)V
    .locals 3

    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v1

    sget-object v0, Lcom/android/camera/EffectChangedListenerController;->mEffectChangedListenerMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/effect/EffectController$EffectChangedListener;

    invoke-virtual {v1, v0}, Lcom/android/camera/effect/EffectController;->removeChangeListener(Lcom/android/camera/effect/EffectController$EffectChangedListener;)Z

    invoke-static {}, Lcom/android/camera/effect/EffectController;->releaseInstance()V

    return-void
.end method

.method public static setHoldKey(I)V
    .locals 0

    sput p0, Lcom/android/camera/EffectChangedListenerController;->mHoldKey:I

    return-void
.end method
