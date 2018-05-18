.class Lcom/android/camera/fragment/sticker/FragmentSticker$1;
.super Ljava/lang/Object;
.source "FragmentSticker.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/sticker/FragmentSticker;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/fragment/sticker/FragmentSticker;


# direct methods
.method constructor <init>(Lcom/android/camera/fragment/sticker/FragmentSticker;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/sticker/FragmentSticker$1;->this$0:Lcom/android/camera/fragment/sticker/FragmentSticker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/fragment/sticker/FragmentSticker$1;->this$0:Lcom/android/camera/fragment/sticker/FragmentSticker;

    invoke-static {v0}, Lcom/android/camera/fragment/sticker/FragmentSticker;->-get2(Lcom/android/camera/fragment/sticker/FragmentSticker;)Landroid/widget/RadioGroup;

    move-result-object v0

    const v1, 0x7f0a0065

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/fragment/sticker/FragmentSticker$1;->this$0:Lcom/android/camera/fragment/sticker/FragmentSticker;

    invoke-static {v0}, Lcom/android/camera/fragment/sticker/FragmentSticker;->-get2(Lcom/android/camera/fragment/sticker/FragmentSticker;)Landroid/widget/RadioGroup;

    move-result-object v0

    const v1, 0x7f0a0066

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
