.class final Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$MetaItemType$1;
.super Ljava/lang/Object;
.source "CommonProtocol.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLiteMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$MetaItemType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/protobuf/Internal$EnumLiteMap",
        "<",
        "Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$MetaItemType;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic findValueByNumber(I)Lcom/google/protobuf/Internal$EnumLite;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 138
    invoke-virtual {p0, p1}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$MetaItemType$1;->findValueByNumber(I)Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$MetaItemType;

    move-result-object v0

    return-object v0
.end method

.method public findValueByNumber(I)Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$MetaItemType;
    .locals 1
    .param p1, "number"    # I

    .prologue
    .line 140
    invoke-static {p1}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$MetaItemType;->valueOf(I)Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$MetaItemType;

    move-result-object v0

    return-object v0
.end method
