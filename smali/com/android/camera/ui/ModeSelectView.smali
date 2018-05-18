.class public Lcom/android/camera/ui/ModeSelectView;
.super Landroid/widget/LinearLayout;
.source "ModeSelectView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/ModeSelectView$onModeClickedListener;
    }
.end annotation


# instance fields
.field private lastActivateTextView:Lcom/android/camera/ui/ColorActivateTextView;

.field private onModeClickedListener:Lcom/android/camera/ui/ModeSelectView$onModeClickedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/camera/ui/ModeSelectView;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0}, Lcom/android/camera/ui/ModeSelectView;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0}, Lcom/android/camera/ui/ModeSelectView;->initView()V

    return-void
.end method

.method private scrollTo(ILjava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lio/reactivex/Completable;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    if-eqz p3, :cond_1

    :cond_0
    invoke-static {p0, p1}, Lcom/android/camera/animation/type/TranslateXOnSubscribe;->directSetResult(Landroid/view/View;I)V

    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/android/camera/animation/type/TranslateXOnSubscribe;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/animation/type/TranslateXOnSubscribe;-><init>(Landroid/view/View;I)V

    const/16 v1, 0x12c

    invoke-virtual {v0, v1}, Lcom/android/camera/animation/type/TranslateXOnSubscribe;->setDurationTime(I)Lcom/android/camera/animation/type/BaseOnSubScribe;

    move-result-object v0

    invoke-static {v0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private setSelection(ILjava/util/List;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lio/reactivex/Completable;",
            ">;Z)V"
        }
    .end annotation

    iget-object v6, p0, Lcom/android/camera/ui/ModeSelectView;->lastActivateTextView:Lcom/android/camera/ui/ColorActivateTextView;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/camera/ui/ModeSelectView;->lastActivateTextView:Lcom/android/camera/ui/ColorActivateTextView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/camera/ui/ColorActivateTextView;->setActivated(Z)V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/ModeSelectView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/camera/ui/ColorActivateTextView;

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lcom/android/camera/ui/ColorActivateTextView;->setActivated(Z)V

    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result v6

    if-eqz v6, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/android/camera/ui/ColorActivateTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/camera/ui/ModeSelectView;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f0f0124

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/android/camera/ui/ColorActivateTextView;->setContentDescription(Ljava/lang/CharSequence;)V

    const/16 v6, 0x80

    invoke-virtual {v4, v6}, Lcom/android/camera/ui/ColorActivateTextView;->sendAccessibilityEvent(I)V

    :cond_1
    iput-object v4, p0, Lcom/android/camera/ui/ModeSelectView;->lastActivateTextView:Lcom/android/camera/ui/ColorActivateTextView;

    invoke-virtual {p0}, Lcom/android/camera/ui/ModeSelectView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v3, v6, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_2

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/ModeSelectView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-static {v6}, Lcom/android/camera/Util;->getChildMeasureWidth(Landroid/view/View;)I

    move-result v6

    add-int/2addr v2, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-static {v4}, Lcom/android/camera/Util;->getChildMeasureWidth(Landroid/view/View;)I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int v5, v2, v6

    sub-int v0, v3, v5

    invoke-virtual {p0}, Lcom/android/camera/ui/ModeSelectView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/camera/Util;->isLayoutRTL(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_3

    neg-int v0, v0

    :cond_3
    invoke-direct {p0, v0, p2, p3}, Lcom/android/camera/ui/ModeSelectView;->scrollTo(ILjava/util/List;Z)V

    return-void
.end method


# virtual methods
.method public init(Lcom/android/camera/data/data/global/ComponentModuleList;I)V
    .locals 9

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/android/camera/ui/ModeSelectView;->removeAllViews()V

    invoke-virtual {p1}, Lcom/android/camera/data/data/global/ComponentModuleList;->getItems()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-virtual {p0}, Lcom/android/camera/ui/ModeSelectView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v7, 0x7f040018

    invoke-virtual {v4, v7, p0, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/camera/ui/ColorActivateTextView;

    invoke-virtual {v6, p0}, Lcom/android/camera/ui/ColorActivateTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v7, -0x66000001

    invoke-virtual {v6, v7}, Lcom/android/camera/ui/ColorActivateTextView;->setNormalCor(I)V

    iget-object v7, v1, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const v7, -0xff5701

    invoke-virtual {v6, v7}, Lcom/android/camera/ui/ColorActivateTextView;->setActivateColor(I)V

    iget v7, v1, Lcom/android/camera/data/data/ComponentDataItem;->mDisplayNameRes:I

    invoke-virtual {v6, v7}, Lcom/android/camera/ui/ColorActivateTextView;->setText(I)V

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/camera/ui/ColorActivateTextView;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p0, v6}, Lcom/android/camera/ui/ModeSelectView;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    const/16 v7, 0xa8

    if-eq p2, v7, :cond_1

    const/16 v7, 0xa9

    if-ne p2, v7, :cond_2

    :cond_1
    const/16 p2, 0xa2

    :cond_2
    const/4 v0, 0x0

    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-ge v0, v7, :cond_3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/camera/data/data/ComponentDataItem;

    iget-object v7, v7, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v7, p2, :cond_4

    const/4 v7, 0x0

    invoke-direct {p0, v0, v7, v8}, Lcom/android/camera/ui/ModeSelectView;->setSelection(ILjava/util/List;Z)V

    :cond_3
    return-void

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public initView()V
    .locals 0

    return-void
.end method

.method public judgePosition(ILjava/util/List;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lio/reactivex/Completable;",
            ">;Z)V"
        }
    .end annotation

    iget-object v4, p0, Lcom/android/camera/ui/ModeSelectView;->lastActivateTextView:Lcom/android/camera/ui/ColorActivateTextView;

    if-nez v4, :cond_0

    return-void

    :cond_0
    iget-object v4, p0, Lcom/android/camera/ui/ModeSelectView;->lastActivateTextView:Lcom/android/camera/ui/ColorActivateTextView;

    invoke-virtual {v4}, Lcom/android/camera/ui/ColorActivateTextView;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p1, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/ui/ModeSelectView;->getChildCount()I

    move-result v4

    if-ge v1, v4, :cond_4

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/ModeSelectView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne p1, v2, :cond_3

    invoke-direct {p0, v1, p2, p3}, Lcom/android/camera/ui/ModeSelectView;->setSelection(ILjava/util/List;Z)V

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/ModeSelectView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/camera/ui/ColorActivateTextView;

    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Lcom/android/camera/ui/ColorActivateTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/camera/ui/ColorActivateTextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_4
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/camera/ui/ModeSelectView;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/ui/ModeSelectView;->onModeClickedListener:Lcom/android/camera/ui/ModeSelectView$onModeClickedListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/ui/ModeSelectView;->onModeClickedListener:Lcom/android/camera/ui/ModeSelectView$onModeClickedListener;

    invoke-interface {v1, v0}, Lcom/android/camera/ui/ModeSelectView$onModeClickedListener;->onModeClicked(I)V

    :cond_1
    return-void
.end method

.method public setOnModeClickedListener(Lcom/android/camera/ui/ModeSelectView$onModeClickedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/ui/ModeSelectView;->onModeClickedListener:Lcom/android/camera/ui/ModeSelectView$onModeClickedListener;

    return-void
.end method
