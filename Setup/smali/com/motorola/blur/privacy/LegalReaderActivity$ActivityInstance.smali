.class public Lcom/motorola/blur/privacy/LegalReaderActivity$ActivityInstance;
.super Ljava/lang/Object;
.source "LegalReaderActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/privacy/LegalReaderActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ActivityInstance"
.end annotation


# static fields
.field private static sActivity:Lcom/motorola/blur/privacy/LegalReaderActivity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x0

    sput-object v0, Lcom/motorola/blur/privacy/LegalReaderActivity$ActivityInstance;->sActivity:Lcom/motorola/blur/privacy/LegalReaderActivity;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/motorola/blur/privacy/LegalReaderActivity;
    .locals 1

    .prologue
    .line 105
    sget-object v0, Lcom/motorola/blur/privacy/LegalReaderActivity$ActivityInstance;->sActivity:Lcom/motorola/blur/privacy/LegalReaderActivity;

    return-object v0
.end method

.method public static setInstance(Lcom/motorola/blur/privacy/LegalReaderActivity;)V
    .locals 0
    .param p0, "activity"    # Lcom/motorola/blur/privacy/LegalReaderActivity;

    .prologue
    .line 102
    sput-object p0, Lcom/motorola/blur/privacy/LegalReaderActivity$ActivityInstance;->sActivity:Lcom/motorola/blur/privacy/LegalReaderActivity;

    .line 103
    return-void
.end method
