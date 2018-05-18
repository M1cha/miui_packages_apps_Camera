.class public Lcom/android/camera/module/MorphoPanoramaModule$StillProcTask;
.super Ljava/lang/Thread;
.source "MorphoPanoramaModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/MorphoPanoramaModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StillProcTask"
.end annotation


# instance fields
.field private shootCount:I

.field final synthetic this$0:Lcom/android/camera/module/MorphoPanoramaModule;


# direct methods
.method public constructor <init>(Lcom/android/camera/module/MorphoPanoramaModule;)V
    .locals 1

    iput-object p1, p0, Lcom/android/camera/module/MorphoPanoramaModule$StillProcTask;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/module/MorphoPanoramaModule$StillProcTask;->shootCount:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    :goto_0
    iget-object v4, p0, Lcom/android/camera/module/MorphoPanoramaModule$StillProcTask;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    invoke-static {v4}, Lcom/android/camera/module/MorphoPanoramaModule;->-get8(Lcom/android/camera/module/MorphoPanoramaModule;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/camera/module/MorphoPanoramaModule$StillProcTask;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    invoke-static {v4}, Lcom/android/camera/module/MorphoPanoramaModule;->-get12(Lcom/android/camera/module/MorphoPanoramaModule;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_3

    iget-object v4, p0, Lcom/android/camera/module/MorphoPanoramaModule$StillProcTask;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    invoke-static {v4}, Lcom/android/camera/module/MorphoPanoramaModule;->-get12(Lcom/android/camera/module/MorphoPanoramaModule;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/MorphoPanoramaModule$StillImageData;

    sget-boolean v4, Lcom/android/camera/Util;->sIsDumpLog:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/camera/module/MorphoPanoramaModule$StillProcTask;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    const v5, 0x7f0f00f1

    invoke-virtual {v4, v5}, Lcom/android/camera/module/MorphoPanoramaModule;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/module/MorphoPanoramaModule$StillProcTask;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    invoke-static {v5}, Lcom/android/camera/module/MorphoPanoramaModule;->-get15(Lcom/android/camera/module/MorphoPanoramaModule;)J

    move-result-wide v6

    invoke-static {v4, v6, v7}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v4, v0, Lcom/android/camera/module/MorphoPanoramaModule$StillImageData;->mImage:Ljava/nio/ByteBuffer;

    iget v5, v0, Lcom/android/camera/module/MorphoPanoramaModule$StillImageData;->mId:I

    invoke-static {v4, v5, v2}, Lcom/android/camera/storage/Storage;->saveMorphoPanoramaOriginalPic(Ljava/nio/ByteBuffer;ILjava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/android/camera/module/MorphoPanoramaModule;->-get1()Z

    move-result v4

    if-nez v4, :cond_5

    invoke-static {}, Lcom/android/camera/module/MorphoPanoramaModule;->-get0()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/camera/module/MorphoPanoramaModule;->-get0()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ": run attachStillImageExt() start :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Lcom/android/camera/module/MorphoPanoramaModule$StillImageData;->mId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/camera/module/MorphoPanoramaModule$StillProcTask;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    invoke-static {v4}, Lcom/android/camera/module/MorphoPanoramaModule;->-get9(Lcom/android/camera/module/MorphoPanoramaModule;)Lcom/android/camera/panorama/MorphoPanoramaGP;

    move-result-object v4

    if-nez v4, :cond_4

    const/high16 v3, -0x40000000    # -2.0f

    :goto_1
    if-eqz v3, :cond_1

    iget-object v4, p0, Lcom/android/camera/module/MorphoPanoramaModule$StillProcTask;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    iget-object v4, v4, Lcom/android/camera/module/MorphoPanoramaModule;->mActivity:Lcom/android/camera/Camera;

    if-eqz v4, :cond_1

    invoke-static {}, Lcom/android/camera/module/MorphoPanoramaModule;->-get0()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "%s: attachStillImageExt() -> 0x%x"

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {}, Lcom/android/camera/module/MorphoPanoramaModule;->-get0()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/camera/module/MorphoPanoramaModule$StillProcTask;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    iget-object v4, v4, Lcom/android/camera/module/MorphoPanoramaModule;->mActivity:Lcom/android/camera/Camera;

    new-instance v5, Lcom/android/camera/module/MorphoPanoramaModule$StillProcTask$1;

    invoke-direct {v5, p0}, Lcom/android/camera/module/MorphoPanoramaModule$StillProcTask$1;-><init>(Lcom/android/camera/module/MorphoPanoramaModule$StillProcTask;)V

    invoke-virtual {v4, v5}, Lcom/android/camera/Camera;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    iget v4, p0, Lcom/android/camera/module/MorphoPanoramaModule$StillProcTask;->shootCount:I

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/camera/module/MorphoPanoramaModule$StillProcTask;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    invoke-static {v4}, Lcom/android/camera/module/MorphoPanoramaModule;->-get9(Lcom/android/camera/module/MorphoPanoramaModule;)Lcom/android/camera/panorama/MorphoPanoramaGP;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/camera/module/MorphoPanoramaModule$StillProcTask;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    invoke-static {v4}, Lcom/android/camera/module/MorphoPanoramaModule;->-get9(Lcom/android/camera/module/MorphoPanoramaModule;)Lcom/android/camera/panorama/MorphoPanoramaGP;

    move-result-object v4

    iget-object v5, v0, Lcom/android/camera/module/MorphoPanoramaModule$StillImageData;->mImage:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v5}, Lcom/android/camera/panorama/MorphoPanoramaGP;->attachSetJpegForCopyingExif(Ljava/nio/ByteBuffer;)I

    :cond_2
    :goto_2
    iget v4, p0, Lcom/android/camera/module/MorphoPanoramaModule$StillProcTask;->shootCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/camera/module/MorphoPanoramaModule$StillProcTask;->shootCount:I

    iget-object v4, v0, Lcom/android/camera/module/MorphoPanoramaModule$StillImageData;->mImage:Ljava/nio/ByteBuffer;

    invoke-static {v4}, Lcom/android/camera/panorama/NativeMemoryAllocator;->freeBuffer(Ljava/nio/ByteBuffer;)I

    iget-object v4, v0, Lcom/android/camera/module/MorphoPanoramaModule$StillImageData;->mMotionData:Ljava/nio/ByteBuffer;

    invoke-static {v4}, Lcom/android/camera/panorama/NativeMemoryAllocator;->freeBuffer(Ljava/nio/ByteBuffer;)I

    iget-object v4, p0, Lcom/android/camera/module/MorphoPanoramaModule$StillProcTask;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    invoke-static {v4}, Lcom/android/camera/module/MorphoPanoramaModule;->-get5(Lcom/android/camera/module/MorphoPanoramaModule;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v4, v5}, Lcom/android/camera/module/MorphoPanoramaModule;->-set1(Lcom/android/camera/module/MorphoPanoramaModule;I)I

    :cond_3
    const-wide/16 v4, 0x64

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_0

    :cond_4
    iget-object v4, p0, Lcom/android/camera/module/MorphoPanoramaModule$StillProcTask;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    invoke-static {v4}, Lcom/android/camera/module/MorphoPanoramaModule;->-get9(Lcom/android/camera/module/MorphoPanoramaModule;)Lcom/android/camera/panorama/MorphoPanoramaGP;

    move-result-object v4

    iget-object v5, v0, Lcom/android/camera/module/MorphoPanoramaModule$StillImageData;->mImage:Ljava/nio/ByteBuffer;

    iget v6, v0, Lcom/android/camera/module/MorphoPanoramaModule$StillImageData;->mId:I

    iget-object v7, v0, Lcom/android/camera/module/MorphoPanoramaModule$StillImageData;->mMotionData:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/camera/panorama/MorphoPanoramaGP;->attachStillImageExt(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;)I

    move-result v3

    goto :goto_1

    :cond_5
    iget-object v4, p0, Lcom/android/camera/module/MorphoPanoramaModule$StillProcTask;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    invoke-static {v4}, Lcom/android/camera/module/MorphoPanoramaModule;->-get9(Lcom/android/camera/module/MorphoPanoramaModule;)Lcom/android/camera/panorama/MorphoPanoramaGP;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-static {}, Lcom/android/camera/module/MorphoPanoramaModule;->-get0()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/camera/module/MorphoPanoramaModule;->-get0()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ": run attachStillImageRaw() start :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Lcom/android/camera/module/MorphoPanoramaModule$StillImageData;->mId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/camera/module/MorphoPanoramaModule$StillProcTask;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    invoke-static {v4}, Lcom/android/camera/module/MorphoPanoramaModule;->-get9(Lcom/android/camera/module/MorphoPanoramaModule;)Lcom/android/camera/panorama/MorphoPanoramaGP;

    move-result-object v4

    iget-object v5, v0, Lcom/android/camera/module/MorphoPanoramaModule$StillImageData;->mImage:Ljava/nio/ByteBuffer;

    iget v6, v0, Lcom/android/camera/module/MorphoPanoramaModule$StillImageData;->mId:I

    iget-object v7, v0, Lcom/android/camera/module/MorphoPanoramaModule$StillImageData;->mMotionData:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/camera/panorama/MorphoPanoramaGP;->attachStillImageRaw(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;)I

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/android/camera/module/MorphoPanoramaModule;->-get0()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "%s:attachStillImageExt() -> 0x%x"

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {}, Lcom/android/camera/module/MorphoPanoramaModule;->-get0()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_6
    :goto_3
    iget-object v4, p0, Lcom/android/camera/module/MorphoPanoramaModule$StillProcTask;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    invoke-static {v4}, Lcom/android/camera/module/MorphoPanoramaModule;->-get6(Lcom/android/camera/module/MorphoPanoramaModule;)I

    move-result v4

    iget-object v5, p0, Lcom/android/camera/module/MorphoPanoramaModule$StillProcTask;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    invoke-static {v5}, Lcom/android/camera/module/MorphoPanoramaModule;->-get5(Lcom/android/camera/module/MorphoPanoramaModule;)I

    move-result v5

    if-le v4, v5, :cond_7

    iget-object v4, p0, Lcom/android/camera/module/MorphoPanoramaModule$StillProcTask;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    invoke-static {v4}, Lcom/android/camera/module/MorphoPanoramaModule;->-get12(Lcom/android/camera/module/MorphoPanoramaModule;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_6

    iget-object v4, p0, Lcom/android/camera/module/MorphoPanoramaModule$StillProcTask;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    invoke-static {v4}, Lcom/android/camera/module/MorphoPanoramaModule;->-get12(Lcom/android/camera/module/MorphoPanoramaModule;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/MorphoPanoramaModule$StillImageData;

    iget-object v4, v0, Lcom/android/camera/module/MorphoPanoramaModule$StillImageData;->mImage:Ljava/nio/ByteBuffer;

    invoke-static {v4}, Lcom/android/camera/panorama/NativeMemoryAllocator;->freeBuffer(Ljava/nio/ByteBuffer;)I

    iget-object v4, v0, Lcom/android/camera/module/MorphoPanoramaModule$StillImageData;->mMotionData:Ljava/nio/ByteBuffer;

    invoke-static {v4}, Lcom/android/camera/panorama/NativeMemoryAllocator;->freeBuffer(Ljava/nio/ByteBuffer;)I

    iget-object v4, p0, Lcom/android/camera/module/MorphoPanoramaModule$StillProcTask;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    invoke-static {v4}, Lcom/android/camera/module/MorphoPanoramaModule;->-get5(Lcom/android/camera/module/MorphoPanoramaModule;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v4, v5}, Lcom/android/camera/module/MorphoPanoramaModule;->-set1(Lcom/android/camera/module/MorphoPanoramaModule;I)I

    goto :goto_3

    :cond_7
    return-void
.end method
