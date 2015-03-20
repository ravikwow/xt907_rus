.class final Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Error$1;
.super Ljava/lang/Object;
.source "SessionsProtocol.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLiteMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Error;
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
        "Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Error;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 383
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic findValueByNumber(I)Lcom/google/protobuf/Internal$EnumLite;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 383
    invoke-virtual {p0, p1}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Error$1;->findValueByNumber(I)Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Error;

    move-result-object v0

    return-object v0
.end method

.method public findValueByNumber(I)Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Error;
    .locals 1
    .param p1, "number"    # I

    .prologue
    .line 385
    invoke-static {p1}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Error;->valueOf(I)Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Error;

    move-result-object v0

    return-object v0
.end method
