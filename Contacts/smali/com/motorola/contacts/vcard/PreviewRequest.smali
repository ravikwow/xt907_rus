.class public Lcom/motorola/contacts/vcard/PreviewRequest;
.super Ljava/lang/Object;
.source "PreviewRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/motorola/contacts/vcard/PreviewRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final account:Landroid/accounts/Account;

.field public final entryCount:I

.field public final estimatedCharset:Ljava/lang/String;

.field public final estimatedVCardType:I

.field public final uri:Landroid/net/Uri;

.field public final vcardVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 110
    new-instance v0, Lcom/motorola/contacts/vcard/PreviewRequest$1;

    invoke-direct {v0}, Lcom/motorola/contacts/vcard/PreviewRequest$1;-><init>()V

    sput-object v0, Lcom/motorola/contacts/vcard/PreviewRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/accounts/Account;Landroid/net/Uri;ILjava/lang/String;II)V
    .locals 0
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "estimatedType"    # I
    .param p4, "estimatedCharset"    # Ljava/lang/String;
    .param p5, "vcardVersion"    # I
    .param p6, "entryCount"    # I

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lcom/motorola/contacts/vcard/PreviewRequest;->account:Landroid/accounts/Account;

    .line 77
    iput-object p2, p0, Lcom/motorola/contacts/vcard/PreviewRequest;->uri:Landroid/net/Uri;

    .line 78
    iput p3, p0, Lcom/motorola/contacts/vcard/PreviewRequest;->estimatedVCardType:I

    .line 79
    iput-object p4, p0, Lcom/motorola/contacts/vcard/PreviewRequest;->estimatedCharset:Ljava/lang/String;

    .line 80
    iput p5, p0, Lcom/motorola/contacts/vcard/PreviewRequest;->vcardVersion:I

    .line 81
    iput p6, p0, Lcom/motorola/contacts/vcard/PreviewRequest;->entryCount:I

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    sget-object v0, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    iput-object v0, p0, Lcom/motorola/contacts/vcard/PreviewRequest;->account:Landroid/accounts/Account;

    .line 86
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/motorola/contacts/vcard/PreviewRequest;->uri:Landroid/net/Uri;

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/motorola/contacts/vcard/PreviewRequest;->estimatedVCardType:I

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/contacts/vcard/PreviewRequest;->estimatedCharset:Ljava/lang/String;

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/motorola/contacts/vcard/PreviewRequest;->vcardVersion:I

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/motorola/contacts/vcard/PreviewRequest;->entryCount:I

    .line 91
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 98
    iget-object v0, p0, Lcom/motorola/contacts/vcard/PreviewRequest;->account:Landroid/accounts/Account;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/motorola/contacts/vcard/PreviewRequest;->account:Landroid/accounts/Account;

    invoke-virtual {v0, p1, p2}, Landroid/accounts/Account;->writeToParcel(Landroid/os/Parcel;I)V

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/motorola/contacts/vcard/PreviewRequest;->uri:Landroid/net/Uri;

    if-eqz v0, :cond_1

    .line 102
    iget-object v0, p0, Lcom/motorola/contacts/vcard/PreviewRequest;->uri:Landroid/net/Uri;

    invoke-virtual {v0, p1, p2}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 104
    :cond_1
    iget v0, p0, Lcom/motorola/contacts/vcard/PreviewRequest;->estimatedVCardType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 105
    iget-object v0, p0, Lcom/motorola/contacts/vcard/PreviewRequest;->estimatedCharset:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 106
    iget v0, p0, Lcom/motorola/contacts/vcard/PreviewRequest;->vcardVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 107
    iget v0, p0, Lcom/motorola/contacts/vcard/PreviewRequest;->entryCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 108
    return-void
.end method
