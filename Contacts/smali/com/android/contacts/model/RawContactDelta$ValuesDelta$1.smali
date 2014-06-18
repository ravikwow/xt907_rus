.class final Lcom/android/contacts/model/RawContactDelta$ValuesDelta$1;
.super Ljava/lang/Object;
.source "RawContactDelta.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/model/RawContactDelta$ValuesDelta;
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
        "Lcom/android/contacts/model/RawContactDelta$ValuesDelta;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 978
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/contacts/model/RawContactDelta$ValuesDelta;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 980
    new-instance v0, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;

    invoke-direct {v0}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;-><init>()V

    .line 981
    .local v0, "values":Lcom/android/contacts/model/RawContactDelta$ValuesDelta;
    invoke-virtual {v0, p1}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->readFromParcel(Landroid/os/Parcel;)V

    .line 982
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 978
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/contacts/model/RawContactDelta$ValuesDelta;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/android/contacts/model/RawContactDelta$ValuesDelta;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 986
    new-array v0, p1, [Lcom/android/contacts/model/RawContactDelta$ValuesDelta;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 978
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta$1;->newArray(I)[Lcom/android/contacts/model/RawContactDelta$ValuesDelta;

    move-result-object v0

    return-object v0
.end method
