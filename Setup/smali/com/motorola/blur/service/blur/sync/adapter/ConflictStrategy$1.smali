.class final Lcom/motorola/blur/service/blur/sync/adapter/ConflictStrategy$1;
.super Ljava/lang/Object;
.source "ConflictStrategy.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/blur/sync/adapter/ConflictStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/motorola/blur/service/blur/sync/adapter/ConflictStrategy;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/motorola/blur/service/blur/sync/adapter/ConflictStrategy;
    .locals 4
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 57
    .local v3, "value":I
    :try_start_0
    invoke-static {v3}, Lcom/motorola/blur/service/blur/sync/adapter/ConflictStrategy$Types;->fromValue(I)Lcom/motorola/blur/service/blur/sync/adapter/ConflictStrategy$Types;

    move-result-object v2

    .line 58
    .local v2, "type":Lcom/motorola/blur/service/blur/sync/adapter/ConflictStrategy$Types;
    new-instance v1, Lcom/motorola/blur/service/blur/sync/adapter/ConflictStrategy;

    invoke-direct {v1, v2}, Lcom/motorola/blur/service/blur/sync/adapter/ConflictStrategy;-><init>(Lcom/motorola/blur/service/blur/sync/adapter/ConflictStrategy$Types;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    .end local v2    # "type":Lcom/motorola/blur/service/blur/sync/adapter/ConflictStrategy$Types;
    :goto_0
    return-object v1

    .line 60
    :catch_0
    move-exception v0

    .line 61
    .local v0, "ie":Ljava/lang/IllegalArgumentException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/motorola/blur/service/blur/sync/adapter/ConflictStrategy$1;->createFromParcel(Landroid/os/Parcel;)Lcom/motorola/blur/service/blur/sync/adapter/ConflictStrategy;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/motorola/blur/service/blur/sync/adapter/ConflictStrategy;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 66
    new-array v0, p1, [Lcom/motorola/blur/service/blur/sync/adapter/ConflictStrategy;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/motorola/blur/service/blur/sync/adapter/ConflictStrategy$1;->newArray(I)[Lcom/motorola/blur/service/blur/sync/adapter/ConflictStrategy;

    move-result-object v0

    return-object v0
.end method
