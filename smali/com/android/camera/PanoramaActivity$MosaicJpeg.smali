.class Lcom/android/camera/PanoramaActivity$MosaicJpeg;
.super Ljava/lang/Object;
.source "PanoramaActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/PanoramaActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MosaicJpeg"
.end annotation


# instance fields
.field public final data:[B

.field public final height:I

.field public final isValid:Z

.field final synthetic this$0:Lcom/android/camera/PanoramaActivity;

.field public final width:I


# direct methods
.method public constructor <init>(Lcom/android/camera/PanoramaActivity;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 173
    iput-object p1, p0, Lcom/android/camera/PanoramaActivity$MosaicJpeg;->this$0:Lcom/android/camera/PanoramaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/PanoramaActivity$MosaicJpeg;->data:[B

    .line 175
    iput v1, p0, Lcom/android/camera/PanoramaActivity$MosaicJpeg;->width:I

    .line 176
    iput v1, p0, Lcom/android/camera/PanoramaActivity$MosaicJpeg;->height:I

    .line 177
    iput-boolean v1, p0, Lcom/android/camera/PanoramaActivity$MosaicJpeg;->isValid:Z

    .line 178
    return-void
.end method

.method public constructor <init>(Lcom/android/camera/PanoramaActivity;[BII)V
    .locals 1
    .param p2, "data"    # [B
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 166
    iput-object p1, p0, Lcom/android/camera/PanoramaActivity$MosaicJpeg;->this$0:Lcom/android/camera/PanoramaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    iput-object p2, p0, Lcom/android/camera/PanoramaActivity$MosaicJpeg;->data:[B

    .line 168
    iput p3, p0, Lcom/android/camera/PanoramaActivity$MosaicJpeg;->width:I

    .line 169
    iput p4, p0, Lcom/android/camera/PanoramaActivity$MosaicJpeg;->height:I

    .line 170
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/PanoramaActivity$MosaicJpeg;->isValid:Z

    .line 171
    return-void
.end method
