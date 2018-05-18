.class public Lcom/android/camera/constant/BeautyConstant;
.super Ljava/lang/Object;
.source "BeautyConstant.java"


# static fields
.field public static final LEVEL_ADVANCED:Ljava/lang/String;

.field public static final LEVEL_CLOSE:Ljava/lang/String;

.field public static final LEVEL_HIGH:Ljava/lang/String;

.field public static final LEVEL_LOW:Ljava/lang/String;

.field public static final LEVEL_MEDIUM:Ljava/lang/String;

.field public static final LEVEL_XHIGH:Ljava/lang/String;

.field public static final LEVEL_XXHIGH:Ljava/lang/String;

.field public static final LEVEL_XXXHIGH:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f01a7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/camera/constant/BeautyConstant;->LEVEL_CLOSE:Ljava/lang/String;

    const v1, 0x7f0f01a8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/camera/constant/BeautyConstant;->LEVEL_LOW:Ljava/lang/String;

    const v1, 0x7f0f01a9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/camera/constant/BeautyConstant;->LEVEL_MEDIUM:Ljava/lang/String;

    const v1, 0x7f0f01aa

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/camera/constant/BeautyConstant;->LEVEL_HIGH:Ljava/lang/String;

    const v1, 0x7f0f01ab

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/camera/constant/BeautyConstant;->LEVEL_XHIGH:Ljava/lang/String;

    const v1, 0x7f0f01ac

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/camera/constant/BeautyConstant;->LEVEL_XXHIGH:Ljava/lang/String;

    const v1, 0x7f0f01ad

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/camera/constant/BeautyConstant;->LEVEL_XXXHIGH:Ljava/lang/String;

    const v1, 0x7f0f01ae

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/camera/constant/BeautyConstant;->LEVEL_ADVANCED:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
