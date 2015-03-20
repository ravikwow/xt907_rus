.class public Lcom/motorola/blur/service/blur/WSItemResponse;
.super Lcom/motorola/blur/service/blur/WSResponse;
.source "WSItemResponse.java"


# instance fields
.field private mAppId:B


# direct methods
.method public constructor <init>(I[B)V
    .locals 1
    .param p1, "statusCode"    # I
    .param p2, "data"    # [B

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/motorola/blur/service/blur/WSResponse;-><init>(I[B)V

    .line 22
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/motorola/blur/service/blur/WSItemResponse;->mAppId:B

    .line 26
    return-void
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    const-string v0, ""

    return-object v0
.end method

.method public getAppId()B
    .locals 1

    .prologue
    .line 38
    iget-byte v0, p0, Lcom/motorola/blur/service/blur/WSItemResponse;->mAppId:B

    return v0
.end method

.method public getData()[B
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/motorola/blur/service/blur/WSResponse;->mData:[B

    return-object v0
.end method

.method public setAppId(B)V
    .locals 0
    .param p1, "appId"    # B

    .prologue
    .line 34
    iput-byte p1, p0, Lcom/motorola/blur/service/blur/WSItemResponse;->mAppId:B

    .line 35
    return-void
.end method
