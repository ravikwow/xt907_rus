.class Lcom/android/deskclock/widget/sgv/StaggeredGridView$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "StaggeredGridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/widget/sgv/StaggeredGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/deskclock/widget/sgv/StaggeredGridView$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field firstId:J

.field position:I

.field topOffset:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 3958
    new-instance v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView$SavedState$1;

    invoke-direct {v0}, Lcom/android/deskclock/widget/sgv/StaggeredGridView$SavedState$1;-><init>()V

    sput-object v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 3936
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 3924
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView$SavedState;->firstId:J

    .line 3937
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView$SavedState;->firstId:J

    .line 3938
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView$SavedState;->position:I

    .line 3939
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView$SavedState;->topOffset:I

    .line 3940
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/deskclock/widget/sgv/StaggeredGridView$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/android/deskclock/widget/sgv/StaggeredGridView$1;

    .prologue
    .line 3923
    invoke-direct {p0, p1}, Lcom/android/deskclock/widget/sgv/StaggeredGridView$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "superState"    # Landroid/os/Parcelable;

    .prologue
    .line 3932
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 3924
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView$SavedState;->firstId:J

    .line 3933
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 3952
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StaggereGridView.SavedState{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " firstId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView$SavedState;->firstId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView$SavedState;->position:I

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
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 3944
    invoke-super {p0, p1, p2}, Landroid/view/AbsSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3945
    iget-wide v0, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView$SavedState;->firstId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 3946
    iget v0, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView$SavedState;->position:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3947
    iget v0, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView$SavedState;->topOffset:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3948
    return-void
.end method
