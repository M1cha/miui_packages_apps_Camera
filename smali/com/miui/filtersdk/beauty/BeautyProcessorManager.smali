.class public Lcom/miui/filtersdk/beauty/BeautyProcessorManager;
.super Ljava/lang/Object;
.source "BeautyProcessorManager.java"


# static fields
.field public static final INSTANCE:Lcom/miui/filtersdk/beauty/BeautyProcessorManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/filtersdk/beauty/BeautyProcessorManager;

    invoke-direct {v0}, Lcom/miui/filtersdk/beauty/BeautyProcessorManager;-><init>()V

    sput-object v0, Lcom/miui/filtersdk/beauty/BeautyProcessorManager;->INSTANCE:Lcom/miui/filtersdk/beauty/BeautyProcessorManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public needPreviewCallback()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
