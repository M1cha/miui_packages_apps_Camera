.class public Lcom/sensetime/stmobile/STMobileStickerNative;
.super Ljava/lang/Object;
.source "STMobileStickerNative.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sensetime/stmobile/STMobileStickerNative$ItemCallback;,
        Lcom/sensetime/stmobile/STMobileStickerNative$RenderStatus;
    }
.end annotation


# static fields
.field public static final ST_MOBILE_BROW_JUMP:I = 0x20

.field public static final ST_MOBILE_EYE_BLINK:I = 0x2

.field public static final ST_MOBILE_HEAD_PITCH:I = 0x10

.field public static final ST_MOBILE_HEAD_YAW:I = 0x8

.field public static final ST_MOBILE_MOUTH_AH:I = 0x4

.field private static final TAG:Ljava/lang/String;

.field private static mCallback:Lcom/sensetime/stmobile/STMobileStickerNative$ItemCallback;


# instance fields
.field private nativeStickerHandle:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/sensetime/stmobile/STMobileStickerNative;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sensetime/stmobile/STMobileStickerNative;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "st_mobile"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string/jumbo v0, "stmobile_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static item_callback(Ljava/lang/String;I)V
    .locals 2

    sget-object v0, Lcom/sensetime/stmobile/STMobileStickerNative;->mCallback:Lcom/sensetime/stmobile/STMobileStickerNative$ItemCallback;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sensetime/stmobile/STMobileStickerNative;->mCallback:Lcom/sensetime/stmobile/STMobileStickerNative$ItemCallback;

    invoke-static {p1}, Lcom/sensetime/stmobile/STMobileStickerNative$RenderStatus;->fromStatus(I)Lcom/sensetime/stmobile/STMobileStickerNative$RenderStatus;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lcom/sensetime/stmobile/STMobileStickerNative$ItemCallback;->processTextureCallback(Ljava/lang/String;Lcom/sensetime/stmobile/STMobileStickerNative$RenderStatus;)V

    :cond_0
    return-void
.end method

.method public static setCallback(Lcom/sensetime/stmobile/STMobileStickerNative$ItemCallback;)V
    .locals 0

    sput-object p0, Lcom/sensetime/stmobile/STMobileStickerNative;->mCallback:Lcom/sensetime/stmobile/STMobileStickerNative$ItemCallback;

    return-void
.end method


# virtual methods
.method public native changeSticker(Ljava/lang/String;)I
.end method

.method public native createInstance(Ljava/lang/String;)I
.end method

.method public native destroyInstance()V
.end method

.method public native getTriggerAction()I
.end method

.method public native processTexture(ILcom/sensetime/stmobile/STHumanAction;IIIZI)I
.end method

.method public native processTextureAndOutputBuffer(ILcom/sensetime/stmobile/STHumanAction;IIIZII[B)I
.end method
