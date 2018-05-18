.class Lcom/android/camera/CameraBrightness$CameraBrightnessTask;
.super Landroid/os/AsyncTask;
.source "CameraBrightness.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/CameraBrightness;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CameraBrightnessTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/CameraBrightness;


# direct methods
.method private constructor <init>(Lcom/android/camera/CameraBrightness;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->this$0:Lcom/android/camera/CameraBrightness;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/CameraBrightness;Lcom/android/camera/CameraBrightness$CameraBrightnessTask;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;-><init>(Lcom/android/camera/CameraBrightness;)V

    return-void
.end method

.method private execCommand(Ljava/lang/String;)Ljava/lang/String;
    .locals 14

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-string/jumbo v6, ""

    const/4 v2, 0x0

    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Process;->waitFor()I

    move-result v10

    if-eqz v10, :cond_0

    const-string/jumbo v10, "CameraBrightness"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "exit value = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v5}, Ljava/lang/Process;->exitValue()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v6

    :cond_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/InputStreamReader;

    invoke-virtual {v5}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v7, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v2, v3

    :goto_1
    const-string/jumbo v10, "CameraBrightness"

    const-string/jumbo v11, "execCommand InterruptedException"

    invoke-static {v10, v11}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_2
    return-object v6

    :cond_1
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v10, "CameraBrightness"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "execCommand lcd value="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " cost="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v8

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    move-object v2, v3

    goto :goto_2

    :catch_1
    move-exception v0

    :goto_3
    const-string/jumbo v10, "CameraBrightness"

    const-string/jumbo v11, "execCommand IOException"

    invoke-static {v10, v11}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v0

    move-object v2, v3

    goto :goto_3
.end method

.method private getCurrentBackLight()I
    .locals 10

    const/4 v9, -0x1

    const/4 v0, 0x0

    const/4 v5, 0x0

    :cond_0
    :goto_0
    const-string/jumbo v6, "0"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    if-nez v0, :cond_2

    :cond_1
    const/4 v6, 0x3

    if-ge v5, v6, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->isCancelled()Z

    move-result v6

    if-eqz v6, :cond_4

    :cond_2
    const-string/jumbo v6, "CameraBrightness"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getCurrentBackLight currentSetting="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_8

    iget-object v6, p0, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->this$0:Lcom/android/camera/CameraBrightness;

    const-string/jumbo v7, "config_backlightBits"

    invoke-static {v6, v7}, Lcom/android/camera/CameraBrightness;->-wrap0(Lcom/android/camera/CameraBrightness;Ljava/lang/String;)I

    move-result v1

    if-gtz v1, :cond_3

    iget-object v6, p0, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->this$0:Lcom/android/camera/CameraBrightness;

    const-string/jumbo v7, "config_backlightBit"

    invoke-static {v6, v7}, Lcom/android/camera/CameraBrightness;->-wrap1(Lcom/android/camera/CameraBrightness;Ljava/lang/String;)I

    move-result v1

    :cond_3
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    float-to-int v2, v6

    const/16 v6, 0x8

    if-le v1, v6, :cond_7

    add-int/lit8 v4, v1, -0x8

    const/4 v6, 0x1

    shl-int/2addr v6, v4

    if-ge v2, v6, :cond_6

    const/4 v2, 0x1

    :goto_1
    const-string/jumbo v6, "CameraBrightness"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getCurrentBackLight convert to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_4
    const-string/jumbo v6, "cat sys/class/leds/lcd-backlight/brightness"

    invoke-direct {p0, v6}, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->execCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v6, "0"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    if-nez v0, :cond_0

    :cond_5
    const-wide/16 v6, 0x12c

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception v3

    const-string/jumbo v6, "CameraBrightness"

    invoke-virtual {v3}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_6
    shr-int/2addr v2, v4

    goto :goto_1

    :cond_7
    return v9

    :cond_8
    return v9
.end method

.method private updateBrightness(I)V
    .locals 4

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->this$0:Lcom/android/camera/CameraBrightness;

    invoke-static {v1}, Lcom/android/camera/CameraBrightness;->-get4(Lcom/android/camera/CameraBrightness;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->this$0:Lcom/android/camera/CameraBrightness;

    invoke-static {v1}, Lcom/android/camera/CameraBrightness;->-get1(Lcom/android/camera/CameraBrightness;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->this$0:Lcom/android/camera/CameraBrightness;

    invoke-static {v1}, Lcom/android/camera/CameraBrightness;->-get0(Lcom/android/camera/CameraBrightness;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->this$0:Lcom/android/camera/CameraBrightness;

    invoke-static {v1}, Lcom/android/camera/CameraBrightness;->-get4(Lcom/android/camera/CameraBrightness;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->this$0:Lcom/android/camera/CameraBrightness;

    invoke-static {v1}, Lcom/android/camera/CameraBrightness;->-get1(Lcom/android/camera/CameraBrightness;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    int-to-float v1, p1

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    :goto_0
    const-string/jumbo v1, "CameraBrightness"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateBrightness setting="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " useDefaultValue="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->this$0:Lcom/android/camera/CameraBrightness;

    invoke-static {v3}, Lcom/android/camera/CameraBrightness;->-get4(Lcom/android/camera/CameraBrightness;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " screenBrightness="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->this$0:Lcom/android/camera/CameraBrightness;

    invoke-static {v1}, Lcom/android/camera/CameraBrightness;->-get0(Lcom/android/camera/CameraBrightness;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    iget-object v1, p0, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->this$0:Lcom/android/camera/CameraBrightness;

    invoke-static {v1, p1}, Lcom/android/camera/CameraBrightness;->-set0(Lcom/android/camera/CameraBrightness;I)I

    return-void

    :cond_1
    const/high16 v1, -0x40800000    # -1.0f

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    goto :goto_0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 13

    const/4 v12, 0x0

    const/4 v9, 0x0

    const-string/jumbo v6, "CameraBrightness"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "doInBackground useDefaultValue="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->this$0:Lcom/android/camera/CameraBrightness;

    invoke-static {v8}, Lcom/android/camera/CameraBrightness;->-get4(Lcom/android/camera/CameraBrightness;)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " paused="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->this$0:Lcom/android/camera/CameraBrightness;

    invoke-static {v8}, Lcom/android/camera/CameraBrightness;->-get1(Lcom/android/camera/CameraBrightness;)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->this$0:Lcom/android/camera/CameraBrightness;

    invoke-static {v6}, Lcom/android/camera/CameraBrightness;->-get4(Lcom/android/camera/CameraBrightness;)Z

    move-result v6

    if-nez v6, :cond_4

    iget-object v6, p0, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->this$0:Lcom/android/camera/CameraBrightness;

    invoke-static {v6}, Lcom/android/camera/CameraBrightness;->-get1(Lcom/android/camera/CameraBrightness;)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_4

    invoke-direct {p0}, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->getCurrentBackLight()I

    move-result v3

    const-string/jumbo v6, "CameraBrightness"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "current back light -> "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-gtz v3, :cond_0

    return-object v9

    :cond_0
    iget-object v6, p0, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->this$0:Lcom/android/camera/CameraBrightness;

    invoke-static {v6}, Lcom/android/camera/CameraBrightness;->-wrap2(Lcom/android/camera/CameraBrightness;)V

    iget-object v6, p0, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->this$0:Lcom/android/camera/CameraBrightness;

    invoke-static {v6}, Lcom/android/camera/CameraBrightness;->-get0(Lcom/android/camera/CameraBrightness;)Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget v6, v4, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-lez v6, :cond_2

    iget v6, v4, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    const/high16 v7, 0x437f0000    # 255.0f

    mul-float v2, v6, v7

    const/4 v5, 0x0

    invoke-static {}, Lcom/android/camera/CameraBrightness;->-get2()Landroid/util/Spline;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-static {}, Lcom/android/camera/CameraBrightness;->-get2()Landroid/util/Spline;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/util/Spline;->interpolate(F)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v5

    :goto_0
    sub-int v6, v5, v3

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    const/4 v7, 0x1

    if-gt v6, v7, :cond_2

    const-string/jumbo v6, "CameraBrightness"

    const-string/jumbo v7, "doInBackground brightness unchanged"

    invoke-static {v6, v7}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-object v9

    :cond_1
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v5

    goto :goto_0

    :cond_2
    move v0, v3

    invoke-static {}, Lcom/android/camera/CameraBrightness;->-get3()Landroid/util/Spline;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-static {}, Lcom/android/camera/CameraBrightness;->-get3()Landroid/util/Spline;

    move-result-object v6

    int-to-float v7, v3

    invoke-virtual {v6, v7}, Landroid/util/Spline;->interpolate(F)F

    move-result v6

    float-to-int v0, v6

    :cond_3
    const/16 v6, 0xb9

    invoke-static {v0, v12, v6}, Lcom/android/camera/Util;->clamp(III)I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x43390000    # 185.0f

    div-float/2addr v6, v7

    const v7, 0x3e99999a    # 0.3f

    mul-float/2addr v6, v7

    const v7, 0x3dcccccd    # 0.1f

    add-float v1, v7, v6

    int-to-double v6, v0

    float-to-double v8, v1

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    add-double/2addr v8, v10

    mul-double/2addr v6, v8

    double-to-int v0, v6

    const/16 v6, 0xff

    invoke-static {v0, v12, v6}, Lcom/android/camera/Util;->clamp(III)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    return-object v6

    :cond_4
    const/4 v6, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    return-object v6
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->updateBrightness(I)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
