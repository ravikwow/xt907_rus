.class public Lcom/motorola/messaging/model/ImageModel$ModelData;
.super Ljava/lang/Object;
.source "ImageModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/messaging/model/ImageModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ModelData"
.end annotation


# instance fields
.field private mHeight:I

.field private mSize:I

.field private mSrc:Ljava/lang/String;

.field private mWidth:I


# direct methods
.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .param p1, "src"    # Ljava/lang/String;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "size"    # I

    .prologue
    .line 335
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 336
    iput-object p1, p0, Lcom/motorola/messaging/model/ImageModel$ModelData;->mSrc:Ljava/lang/String;

    .line 337
    iput p2, p0, Lcom/motorola/messaging/model/ImageModel$ModelData;->mWidth:I

    .line 338
    iput p3, p0, Lcom/motorola/messaging/model/ImageModel$ModelData;->mHeight:I

    .line 339
    iput p4, p0, Lcom/motorola/messaging/model/ImageModel$ModelData;->mSize:I

    .line 340
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IIILcom/motorola/messaging/model/ImageModel$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .param p4, "x3"    # I
    .param p5, "x4"    # Lcom/motorola/messaging/model/ImageModel$1;

    .prologue
    .line 329
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/motorola/messaging/model/ImageModel$ModelData;-><init>(Ljava/lang/String;III)V

    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    .prologue
    .line 351
    iget v0, p0, Lcom/motorola/messaging/model/ImageModel$ModelData;->mHeight:I

    return v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 355
    iget v0, p0, Lcom/motorola/messaging/model/ImageModel$ModelData;->mSize:I

    return v0
.end method

.method public getSrc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lcom/motorola/messaging/model/ImageModel$ModelData;->mSrc:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 347
    iget v0, p0, Lcom/motorola/messaging/model/ImageModel$ModelData;->mWidth:I

    return v0
.end method
