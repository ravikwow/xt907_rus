.class public Lcom/motorola/blur/util/mime/NameValuePair;
.super Ljava/lang/Object;
.source "NameValuePair.java"


# instance fields
.field protected mName:Ljava/lang/String;

.field protected mValue:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/motorola/blur/util/mime/NameValuePair;->mName:Ljava/lang/String;

    .line 33
    iput-object p2, p0, Lcom/motorola/blur/util/mime/NameValuePair;->mValue:Ljava/lang/String;

    .line 34
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/motorola/blur/util/mime/NameValuePair;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/motorola/blur/util/mime/NameValuePair;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/motorola/blur/util/mime/NameValuePair;->mName:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/motorola/blur/util/mime/NameValuePair;->mValue:Ljava/lang/String;

    .line 50
    return-void
.end method
