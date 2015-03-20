.class final Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State$1;
.super Ljava/lang/Object;
.source "PhotosProtocol.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLiteMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;
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
        "Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic findValueByNumber(I)Lcom/google/protobuf/Internal$EnumLite;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 99
    invoke-virtual {p0, p1}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State$1;->findValueByNumber(I)Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;

    move-result-object v0

    return-object v0
.end method

.method public findValueByNumber(I)Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;
    .locals 1
    .param p1, "number"    # I

    .prologue
    .line 101
    invoke-static {p1}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;->valueOf(I)Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;

    move-result-object v0

    return-object v0
.end method
