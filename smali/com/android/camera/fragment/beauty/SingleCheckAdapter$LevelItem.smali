.class public Lcom/android/camera/fragment/beauty/SingleCheckAdapter$LevelItem;
.super Ljava/lang/Object;
.source "SingleCheckAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/fragment/beauty/SingleCheckAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LevelItem"
.end annotation


# instance fields
.field private mTextResource:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/camera/fragment/beauty/SingleCheckAdapter$LevelItem;->mTextResource:I

    return-void
.end method


# virtual methods
.method public getTextResource()I
    .locals 1

    iget v0, p0, Lcom/android/camera/fragment/beauty/SingleCheckAdapter$LevelItem;->mTextResource:I

    return v0
.end method
