.class public Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog;
.super Landroid/app/AlertDialog;
.source "WifiP2pGroupCreateDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# static fields
.field private static mContext:Landroid/content/Context;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private array_spinner:[Ljava/lang/String;

.field private deviceNameCount:I

.field filter:Landroid/text/InputFilter;

.field private group:Lcom/android/settings/wifi/p2p/WifiP2pPersistentGroup;

.field private mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

.field private mGroupCreateView:Landroid/view/View;

.field private mNewSsid:Landroid/widget/EditText;

.field private mP2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

.field private mPersistentGroup:Landroid/preference/PreferenceGroup;

.field private mSavedDeviceName:Ljava/lang/String;

.field private mSavedGroupList:Landroid/widget/Spinner;

.field private mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

.field private setCurrPosition:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/preference/PreferenceGroup;Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "persistentGroup"    # Landroid/preference/PreferenceGroup;
    .param p3, "device"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    .prologue
    const/4 v1, 0x0

    .line 73
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 42
    const-string v0, "WifiP2pGroupCreateDialog"

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog;->TAG:Ljava/lang/String;

    .line 50
    iput v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog;->setCurrPosition:I

    .line 51
    iput v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog;->deviceNameCount:I

    .line 52
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog;->mSavedDeviceName:Ljava/lang/String;

    .line 59
    new-instance v0, Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog$1;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog;)V

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog;->filter:Landroid/text/InputFilter;

    .line 74
    sput-object p1, Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog;->mContext:Landroid/content/Context;

    .line 75
    iput-object p2, p0, Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog;->mPersistentGroup:Landroid/preference/PreferenceGroup;

    .line 76
    iput-object p3, p0, Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog;->mP2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 77
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog;)Landroid/net/wifi/p2p/WifiP2pManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog;->mP2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog;)Landroid/widget/Spinner;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog;->mSavedGroupList:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog;

    .prologue
    .line 40
    iget v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog;->deviceNameCount:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog;)Landroid/preference/PreferenceGroup;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog;->mPersistentGroup:Landroid/preference/PreferenceGroup;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog;->mSavedDeviceName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog;->mSavedDeviceName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog;->mNewSsid:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    return-object v0
.end method

.method static synthetic access$800()Landroid/content/Context;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 5
    .param p1, "editable"    # Landroid/text/Editable;

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 207
    iget v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog;->setCurrPosition:I

    if-eqz v1, :cond_0

    .line 208
    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 217
    :goto_0
    return-void

    .line 211
    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog;->mNewSsid:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 212
    .local v0, "str":Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x16

    if-le v1, v2, :cond_2

    .line 213
    :cond_1
    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 215
    :cond_2
    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 203
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 195
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v5, 0x7f0b0038

    const/16 v9, 0x8

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 82
    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    const v6, 0x7f0400ba

    invoke-virtual {v4, v6, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog;->mGroupCreateView:Landroid/view/View;

    .line 84
    iget-object v4, p0, Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog;->mGroupCreateView:Landroid/view/View;

    const v6, 0x7f080216

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    iput-object v4, p0, Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog;->mSavedGroupList:Landroid/widget/Spinner;

    .line 86
    iget-object v4, p0, Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog;->mGroupCreateView:Landroid/view/View;

    const v6, 0x7f080217

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog;->mNewSsid:Landroid/widget/EditText;

    .line 87
    iget-object v4, p0, Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog;->mNewSsid:Landroid/widget/EditText;

    invoke-virtual {v4, v9}, Landroid/widget/EditText;->setVisibility(I)V

    .line 89
    iget-object v4, p0, Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog;->mPersistentGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v4}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v4

    if-lez v4, :cond_1

    .line 90
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog;->mPersistentGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v4}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 91
    iget-object v4, p0, Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog;->mPersistentGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v4, v1}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/android/settings/wifi/p2p/WifiP2pPersistentGroup;

    iput-object v4, p0, Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog;->group:Lcom/android/settings/wifi/p2p/WifiP2pPersistentGroup;

    .line 92
    iget-object v4, p0, Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog;->group:Lcom/android/settings/wifi/p2p/WifiP2pPersistentGroup;

    invoke-virtual {v4}, Lcom/android/settings/wifi/p2p/WifiP2pPersistentGroup;->getMacAddress()Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog;->mP2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v6, v6, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 93
    iget v4, p0, Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog;->deviceNameCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog;->deviceNameCount:I

    .line 90
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 97
    .end local v1    # "i":I
    :cond_1
    iget v4, p0, Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog;->deviceNameCount:I

    if-lez v4, :cond_4

    const v4, 0x7f0b0037

    :goto_1
    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog;->setTitle(I)V

    .line 100
    iget-object v4, p0, Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog;->mGroupCreateView:Landroid/view/View;

    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog;->setView(Landroid/view/View;)V

    .line 101
    iget v4, p0, Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog;->deviceNameCount:I

    add-int/lit8 v4, v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    iput-object v4, p0, Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog;->array_spinner:[Ljava/lang/String;

    .line 102
    iget-object v4, p0, Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog;->array_spinner:[Ljava/lang/String;

    sget-object v6, Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    .line 104
    iget v4, p0, Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog;->deviceNameCount:I

    if-lez v4, :cond_7

    .line 105
    const/4 v1, 0x0

    .restart local v1    # "i":I
    const/4 v2, 0x1

    .local v2, "j":I
    :goto_2
    iget-object v4, p0, Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog;->mPersistentGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v4}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v4

    if-ge v1, v4, :cond_5

    .line 106
    iget-object v4, p0, Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog;->mPersistentGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v4, v1}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/android/settings/wifi/p2p/WifiP2pPersistentGroup;

    iput-object v4, p0, Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog;->group:Lcom/android/settings/wifi/p2p/WifiP2pPersistentGroup;

    .line 107
    iget-object v4, p0, Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog;->group:Lcom/android/settings/wifi/p2p/WifiP2pPersistentGroup;

    invoke-virtual {v4}, Lcom/android/settings/wifi/p2p/WifiP2pPersistentGroup;->getMacAddress()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog;->mP2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v5, v5, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 108
    iget-object v4, p0, Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog;->array_spinner:[Ljava/lang/String;

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "j":I
    .local v3, "j":I
    iget-object v5, p0, Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog;->group:Lcom/android/settings/wifi/p2p/WifiP2pPersistentGroup;

    invoke-virtual {v5}, Lcom/android/settings/wifi/p2p/WifiP2pPersistentGroup;->getGroupName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    .line 109
    iget-object v4, p0, Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog;->group:Lcom/android/settings/wifi/p2p/WifiP2pPersistentGroup;

    invoke-virtual {v4}, Lcom/android/settings/wifi/p2p/WifiP2pPersistentGroup;->getGroupName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog;->mP2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v5, v5, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget v4, p0, Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog;->setCurrPosition:I

    if-nez v4, :cond_2

    .line 110
    add-int/lit8 v4, v3, -0x1

    iput v4, p0, Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog;->setCurrPosition:I

    :cond_2
    move v2, v3

    .line 105
    .end local v3    # "j":I
    .restart local v2    # "j":I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .end local v1    # "i":I
    .end local v2    # "j":I
    :cond_4
    move v4, v5

    .line 97
    goto :goto_1

    .line 115
    .restart local v1    # "i":I
    .restart local v2    # "j":I
    :cond_5
    new-instance v0, Landroid/widget/ArrayAdapter;

    sget-object v4, Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog;->mContext:Landroid/content/Context;

    const v5, 0x7f0400bf

    iget-object v6, p0, Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog;->array_spinner:[Ljava/lang/String;

    invoke-direct {v0, v4, v5, v6}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 117
    .local v0, "adapter":Landroid/widget/ArrayAdapter;
    iget-object v4, p0, Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog;->mSavedGroupList:Landroid/widget/Spinner;

    invoke-virtual {v4, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 118
    iget-object v4, p0, Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog;->mSavedGroupList:Landroid/widget/Spinner;

    invoke-virtual {v4, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 119
    iget-object v4, p0, Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog;->mSavedGroupList:Landroid/widget/Spinner;

    iget v5, p0, Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog;->setCurrPosition:I

    invoke-virtual {v4, v5}, Landroid/widget/Spinner;->setSelection(I)V

    .line 126
    .end local v0    # "adapter":Landroid/widget/ArrayAdapter;
    .end local v1    # "i":I
    .end local v2    # "j":I
    :goto_3
    sget-object v4, Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog;->mContext:Landroid/content/Context;

    const-string v5, "wifip2p"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/p2p/WifiP2pManager;

    iput-object v4, p0, Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 127
    iget-object v4, p0, Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v4, :cond_8

    .line 128
    iget-object v4, p0, Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    sget-object v5, Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog;->mContext:Landroid/content/Context;

    sget-object v6, Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v8}, Landroid/net/wifi/p2p/WifiP2pManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 129
    iget-object v4, p0, Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    if-nez v4, :cond_6

    .line 131
    const-string v4, "WifiP2pGroupCreateDialog"

    const-string v5, "Failed to set up connection with wifi p2p service"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iput-object v8, p0, Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 138
    :cond_6
    :goto_4
    const/4 v4, -0x1

    sget-object v5, Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog;->mContext:Landroid/content/Context;

    const v6, 0x7f0b059d

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog$2;

    invoke-direct {v6, p0}, Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog$2;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog;)V

    invoke-virtual {p0, v4, v5, v6}, Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 180
    const/4 v4, -0x2

    sget-object v5, Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog;->mContext:Landroid/content/Context;

    const v6, 0x7f0b059e

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog$3;

    invoke-direct {v6, p0}, Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog$3;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog;)V

    invoke-virtual {p0, v4, v5, v6}, Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 187
    iget-object v4, p0, Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog;->mNewSsid:Landroid/widget/EditText;

    const/4 v5, 0x1

    new-array v5, v5, [Landroid/text/InputFilter;

    iget-object v6, p0, Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog;->filter:Landroid/text/InputFilter;

    aput-object v6, v5, v7

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 188
    iget-object v4, p0, Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog;->mNewSsid:Landroid/widget/EditText;

    invoke-virtual {v4, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 190
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 191
    return-void

    .line 121
    :cond_7
    iget-object v4, p0, Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog;->mSavedGroupList:Landroid/widget/Spinner;

    invoke-virtual {v4, v9}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 122
    iget-object v4, p0, Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog;->mNewSsid:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog;->mP2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v5, v5, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 123
    iget-object v4, p0, Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog;->mNewSsid:Landroid/widget/EditText;

    invoke-virtual {v4, v7}, Landroid/widget/EditText;->setVisibility(I)V

    goto :goto_3

    .line 135
    :cond_8
    const-string v4, "WifiP2pGroupCreateDialog"

    const-string v5, "mWifiP2pManager is null !"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 221
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iput p3, p0, Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog;->setCurrPosition:I

    .line 222
    if-nez p3, :cond_0

    .line 223
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog;->mNewSsid:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 224
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog;->mNewSsid:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog;->mP2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 229
    :goto_0
    return-void

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog;->mNewSsid:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 227
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog;->mNewSsid:Landroid/widget/EditText;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 232
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 199
    return-void
.end method
