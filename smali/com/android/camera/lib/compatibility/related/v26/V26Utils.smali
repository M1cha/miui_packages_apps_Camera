.class public Lcom/android/camera/lib/compatibility/related/v26/V26Utils;
.super Ljava/lang/Object;
.source "V26Utils.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1a
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static allocGraphicBuffers()V
    .locals 5

    const/16 v1, 0x3200

    const/16 v2, 0xa00

    const/4 v3, 0x1

    const/16 v4, 0x33

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/GraphicBuffer;->create(IIII)Landroid/graphics/GraphicBuffer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/GraphicBuffer;->destroy()V

    return-void
.end method
