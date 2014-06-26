.class public Lcom/android/deskclock/widget/sgv/StaggeredGridView$ScrollState;
.super Ljava/lang/Object;
.source "StaggeredGridView.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/widget/sgv/StaggeredGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScrollState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/deskclock/widget/sgv/StaggeredGridView$ScrollState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAdapterPosition:I

.field private final mItemId:J

.field private mVerticalOffset:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 4046
    new-instance v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView$ScrollState$1;

    invoke-direct {v0}, Lcom/android/deskclock/widget/sgv/StaggeredGridView$ScrollState$1;-><init>()V

    sput-object v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView$ScrollState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JII)V
    .locals 0
    .param p1, "itemId"    # J
    .param p3, "adapterPosition"    # I
    .param p4, "offset"    # I

    .prologue
    .line 4006
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4007
    iput-wide p1, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView$ScrollState;->mItemId:J

    .line 4008
    iput p3, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView$ScrollState;->mAdapterPosition:I

    .line 4009
    iput p4, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView$ScrollState;->mVerticalOffset:I

    .line 4010
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 4012
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4013
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView$ScrollState;->mItemId:J

    .line 4014
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView$ScrollState;->mAdapterPosition:I

    .line 4015
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView$ScrollState;->mVerticalOffset:I

    .line 4016
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/deskclock/widget/sgv/StaggeredGridView$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/android/deskclock/widget/sgv/StaggeredGridView$1;

    .prologue
    .line 3998
    invoke-direct {p0, p1}, Lcom/android/deskclock/widget/sgv/StaggeredGridView$ScrollState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 4036
    const/4 v0, 0x0

    return v0
.end method

.method public getAdapterPosition()I
    .locals 1

    .prologue
    .line 4023
    iget v0, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView$ScrollState;->mAdapterPosition:I

    return v0
.end method

.method public getItemId()J
    .locals 2

    .prologue
    .line 4019
    iget-wide v0, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView$ScrollState;->mItemId:J

    return-wide v0
.end method

.method public getVerticalOffset()I
    .locals 1

    .prologue
    .line 4031
    iget v0, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView$ScrollState;->mVerticalOffset:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 4061
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ScrollState {mItemId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView$ScrollState;->mItemId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mAdapterPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView$ScrollState;->mAdapterPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mVerticalOffset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView$ScrollState;->mVerticalOffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 4041
    iget-wide v0, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView$ScrollState;->mItemId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 4042
    iget v0, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView$ScrollState;->mAdapterPosition:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4043
    iget v0, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView$ScrollState;->mVerticalOffset:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4044
    return-void
.end method
