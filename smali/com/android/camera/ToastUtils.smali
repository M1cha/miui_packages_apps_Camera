.class public Lcom/android/camera/ToastUtils;
.super Ljava/lang/Object;
.source "ToastUtils.java"


# static fields
.field private static oldMsg:Ljava/lang/String;

.field private static oneTime:J

.field protected static toast:Landroid/widget/Toast;

.field private static twoTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    sput-object v0, Lcom/android/camera/ToastUtils;->toast:Landroid/widget/Toast;

    sput-wide v2, Lcom/android/camera/ToastUtils;->oneTime:J

    sput-wide v2, Lcom/android/camera/ToastUtils;->twoTime:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static showToast(Landroid/content/Context;I)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/ToastUtils;->showToast(Ljava/lang/ref/WeakReference;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static showToast(Ljava/lang/ref/WeakReference;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    sget-object v3, Lcom/android/camera/ToastUtils;->toast:Landroid/widget/Toast;

    if-nez v3, :cond_1

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, p1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    sput-object v3, Lcom/android/camera/ToastUtils;->toast:Landroid/widget/Toast;

    sget-object v3, Lcom/android/camera/ToastUtils;->toast:Landroid/widget/Toast;

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sput-wide v4, Lcom/android/camera/ToastUtils;->oneTime:J
    :try_end_0
    .catch Landroid/view/InflateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    sget-wide v4, Lcom/android/camera/ToastUtils;->twoTime:J

    sput-wide v4, Lcom/android/camera/ToastUtils;->oneTime:J

    return-void

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Landroid/view/InflateException;->printStackTrace()V

    goto :goto_0

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sput-wide v4, Lcom/android/camera/ToastUtils;->twoTime:J

    sget-object v3, Lcom/android/camera/ToastUtils;->oldMsg:Ljava/lang/String;

    if-ne p1, v3, :cond_2

    sget-wide v4, Lcom/android/camera/ToastUtils;->twoTime:J

    sget-wide v6, Lcom/android/camera/ToastUtils;->oneTime:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_0

    sget-object v3, Lcom/android/camera/ToastUtils;->toast:Landroid/widget/Toast;

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_2
    sput-object p1, Lcom/android/camera/ToastUtils;->oldMsg:Ljava/lang/String;

    sget-object v3, Lcom/android/camera/ToastUtils;->toast:Landroid/widget/Toast;

    invoke-virtual {v3, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    sget-object v3, Lcom/android/camera/ToastUtils;->toast:Landroid/widget/Toast;

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
