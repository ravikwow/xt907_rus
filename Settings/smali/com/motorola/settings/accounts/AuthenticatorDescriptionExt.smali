.class public Lcom/motorola/settings/accounts/AuthenticatorDescriptionExt;
.super Ljava/lang/Object;
.source "AuthenticatorDescriptionExt.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/motorola/settings/accounts/AuthenticatorDescriptionExt;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final accountDisplayName:Ljava/lang/String;

.field public final editSettingActivity:Ljava/lang/String;

.field public final isAccountHidden:Z

.field public final isAuthenticatorHidden:Z

.field public final isRemoveAllowed:Z

.field public final showSyncOption:Z

.field public final type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 104
    new-instance v0, Lcom/motorola/settings/accounts/AuthenticatorDescriptionExt$1;

    invoke-direct {v0}, Lcom/motorola/settings/accounts/AuthenticatorDescriptionExt$1;-><init>()V

    sput-object v0, Lcom/motorola/settings/accounts/AuthenticatorDescriptionExt;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 59
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/settings/accounts/AuthenticatorDescriptionExt;->type:Ljava/lang/String;

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/motorola/settings/accounts/AuthenticatorDescriptionExt;->isAccountHidden:Z

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/motorola/settings/accounts/AuthenticatorDescriptionExt;->isAuthenticatorHidden:Z

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/motorola/settings/accounts/AuthenticatorDescriptionExt;->showSyncOption:Z

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_3

    :goto_3
    iput-boolean v1, p0, Lcom/motorola/settings/accounts/AuthenticatorDescriptionExt;->isRemoveAllowed:Z

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/settings/accounts/AuthenticatorDescriptionExt;->accountDisplayName:Ljava/lang/String;

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/settings/accounts/AuthenticatorDescriptionExt;->editSettingActivity:Ljava/lang/String;

    .line 67
    return-void

    :cond_0
    move v0, v2

    .line 61
    goto :goto_0

    :cond_1
    move v0, v2

    .line 62
    goto :goto_1

    :cond_2
    move v0, v2

    .line 63
    goto :goto_2

    :cond_3
    move v1, v2

    .line 64
    goto :goto_3
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/motorola/settings/accounts/AuthenticatorDescriptionExt$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/motorola/settings/accounts/AuthenticatorDescriptionExt$1;

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/motorola/settings/accounts/AuthenticatorDescriptionExt;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 49
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/motorola/settings/accounts/AuthenticatorDescriptionExt;->type:Ljava/lang/String;

    .line 51
    iput-boolean v0, p0, Lcom/motorola/settings/accounts/AuthenticatorDescriptionExt;->isAccountHidden:Z

    .line 52
    iput-boolean v0, p0, Lcom/motorola/settings/accounts/AuthenticatorDescriptionExt;->isAuthenticatorHidden:Z

    .line 53
    iput-boolean v1, p0, Lcom/motorola/settings/accounts/AuthenticatorDescriptionExt;->showSyncOption:Z

    .line 54
    iput-boolean v1, p0, Lcom/motorola/settings/accounts/AuthenticatorDescriptionExt;->isRemoveAllowed:Z

    .line 55
    iput-object v2, p0, Lcom/motorola/settings/accounts/AuthenticatorDescriptionExt;->accountDisplayName:Ljava/lang/String;

    .line 56
    iput-object v2, p0, Lcom/motorola/settings/accounts/AuthenticatorDescriptionExt;->editSettingActivity:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZZZZLjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "isHidden"    # Z
    .param p3, "isAuthHidden"    # Z
    .param p4, "syncAvailable"    # Z
    .param p5, "isRemoveAllowed"    # Z
    .param p6, "accountDisplayName"    # Ljava/lang/String;
    .param p7, "editSettingActivity"    # Ljava/lang/String;

    .prologue
    .line 38
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 39
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "type cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :cond_0
    iput-object p1, p0, Lcom/motorola/settings/accounts/AuthenticatorDescriptionExt;->type:Ljava/lang/String;

    .line 41
    iput-boolean p2, p0, Lcom/motorola/settings/accounts/AuthenticatorDescriptionExt;->isAccountHidden:Z

    .line 42
    iput-boolean p3, p0, Lcom/motorola/settings/accounts/AuthenticatorDescriptionExt;->isAuthenticatorHidden:Z

    .line 43
    iput-boolean p4, p0, Lcom/motorola/settings/accounts/AuthenticatorDescriptionExt;->showSyncOption:Z

    .line 44
    iput-boolean p5, p0, Lcom/motorola/settings/accounts/AuthenticatorDescriptionExt;->isRemoveAllowed:Z

    .line 45
    iput-object p6, p0, Lcom/motorola/settings/accounts/AuthenticatorDescriptionExt;->accountDisplayName:Ljava/lang/String;

    .line 46
    iput-object p7, p0, Lcom/motorola/settings/accounts/AuthenticatorDescriptionExt;->editSettingActivity:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public static newKey(Ljava/lang/String;)Lcom/motorola/settings/accounts/AuthenticatorDescriptionExt;
    .locals 2
    .param p0, "type"    # Ljava/lang/String;

    .prologue
    .line 70
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "type cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_0
    new-instance v0, Lcom/motorola/settings/accounts/AuthenticatorDescriptionExt;

    invoke-direct {v0, p0}, Lcom/motorola/settings/accounts/AuthenticatorDescriptionExt;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 86
    if-ne p1, p0, :cond_0

    const/4 v1, 0x1

    .line 89
    :goto_0
    return v1

    .line 87
    :cond_0
    instance-of v1, p1, Lcom/motorola/settings/accounts/AuthenticatorDescriptionExt;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 88
    check-cast v0, Lcom/motorola/settings/accounts/AuthenticatorDescriptionExt;

    .line 89
    .local v0, "other":Lcom/motorola/settings/accounts/AuthenticatorDescriptionExt;
    iget-object v1, p0, Lcom/motorola/settings/accounts/AuthenticatorDescriptionExt;->type:Ljava/lang/String;

    iget-object v2, v0, Lcom/motorola/settings/accounts/AuthenticatorDescriptionExt;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/motorola/settings/accounts/AuthenticatorDescriptionExt;->type:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 94
    iget-object v0, p0, Lcom/motorola/settings/accounts/AuthenticatorDescriptionExt;->type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 95
    iget-boolean v0, p0, Lcom/motorola/settings/accounts/AuthenticatorDescriptionExt;->isAccountHidden:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 96
    iget-boolean v0, p0, Lcom/motorola/settings/accounts/AuthenticatorDescriptionExt;->isAuthenticatorHidden:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 97
    iget-boolean v0, p0, Lcom/motorola/settings/accounts/AuthenticatorDescriptionExt;->showSyncOption:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 98
    iget-boolean v0, p0, Lcom/motorola/settings/accounts/AuthenticatorDescriptionExt;->isRemoveAllowed:Z

    if-eqz v0, :cond_3

    :goto_3
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 99
    iget-object v0, p0, Lcom/motorola/settings/accounts/AuthenticatorDescriptionExt;->accountDisplayName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/motorola/settings/accounts/AuthenticatorDescriptionExt;->editSettingActivity:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 101
    return-void

    :cond_0
    move v0, v2

    .line 95
    goto :goto_0

    :cond_1
    move v0, v2

    .line 96
    goto :goto_1

    :cond_2
    move v0, v2

    .line 97
    goto :goto_2

    :cond_3
    move v1, v2

    .line 98
    goto :goto_3
.end method
