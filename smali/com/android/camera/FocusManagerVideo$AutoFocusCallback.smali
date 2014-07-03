.class final Lcom/android/camera/FocusManagerVideo$AutoFocusCallback;
.super Ljava/lang/Object;
.source "FocusManager.java"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/FocusManagerVideo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AutoFocusCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/FocusManagerVideo;


# direct methods
.method private constructor <init>(Lcom/android/camera/FocusManagerVideo;)V
    .locals 0

    .prologue
    .line 776
    iput-object p1, p0, Lcom/android/camera/FocusManagerVideo$AutoFocusCallback;->this$0:Lcom/android/camera/FocusManagerVideo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/FocusManagerVideo;Lcom/android/camera/FocusManagerVideo$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/camera/FocusManagerVideo;
    .param p2, "x1"    # Lcom/android/camera/FocusManagerVideo$1;

    .prologue
    .line 776
    invoke-direct {p0, p1}, Lcom/android/camera/FocusManagerVideo$AutoFocusCallback;-><init>(Lcom/android/camera/FocusManagerVideo;)V

    return-void
.end method


# virtual methods
.method public onAutoFocus(ZLandroid/hardware/Camera;)V
    .locals 0
    .param p1, "focused"    # Z
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 780
    return-void
.end method
