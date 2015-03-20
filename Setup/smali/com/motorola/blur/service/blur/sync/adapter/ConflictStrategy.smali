.class public Lcom/motorola/blur/service/blur/sync/adapter/ConflictStrategy;
.super Ljava/lang/Object;
.source "ConflictStrategy.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/blur/sync/adapter/ConflictStrategy$Types;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/motorola/blur/service/blur/sync/adapter/ConflictStrategy;",
            ">;"
        }
    .end annotation
.end field

.field private static final DESCRIBE_CONTENTS_MASK:I


# instance fields
.field private mType:Lcom/motorola/blur/service/blur/sync/adapter/ConflictStrategy$Types;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    new-instance v0, Lcom/motorola/blur/service/blur/sync/adapter/ConflictStrategy$1;

    invoke-direct {v0}, Lcom/motorola/blur/service/blur/sync/adapter/ConflictStrategy$1;-><init>()V

    sput-object v0, Lcom/motorola/blur/service/blur/sync/adapter/ConflictStrategy;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/motorola/blur/service/blur/sync/adapter/ConflictStrategy$Types;)V
    .locals 0
    .param p1, "type"    # Lcom/motorola/blur/service/blur/sync/adapter/ConflictStrategy$Types;

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/motorola/blur/service/blur/sync/adapter/ConflictStrategy;->mType:Lcom/motorola/blur/service/blur/sync/adapter/ConflictStrategy$Types;

    .line 13
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    return v0
.end method

.method public getType()Lcom/motorola/blur/service/blur/sync/adapter/ConflictStrategy$Types;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/motorola/blur/service/blur/sync/adapter/ConflictStrategy;->mType:Lcom/motorola/blur/service/blur/sync/adapter/ConflictStrategy$Types;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 49
    iget-object v0, p0, Lcom/motorola/blur/service/blur/sync/adapter/ConflictStrategy;->mType:Lcom/motorola/blur/service/blur/sync/adapter/ConflictStrategy$Types;

    invoke-virtual {v0}, Lcom/motorola/blur/service/blur/sync/adapter/ConflictStrategy$Types;->toValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 50
    return-void
.end method
