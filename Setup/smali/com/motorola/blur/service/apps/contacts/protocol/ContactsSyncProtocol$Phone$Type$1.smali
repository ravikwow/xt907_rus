.class final Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Phone$Type$1;
.super Ljava/lang/Object;
.source "ContactsSyncProtocol.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLiteMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Phone$Type;
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
        "Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Phone$Type;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 5209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic findValueByNumber(I)Lcom/google/protobuf/Internal$EnumLite;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 5209
    invoke-virtual {p0, p1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Phone$Type$1;->findValueByNumber(I)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Phone$Type;

    move-result-object v0

    return-object v0
.end method

.method public findValueByNumber(I)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Phone$Type;
    .locals 1
    .param p1, "number"    # I

    .prologue
    .line 5211
    invoke-static {p1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Phone$Type;->valueOf(I)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Phone$Type;

    move-result-object v0

    return-object v0
.end method
