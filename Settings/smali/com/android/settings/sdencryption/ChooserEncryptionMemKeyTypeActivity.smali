.class public Lcom/android/settings/sdencryption/ChooserEncryptionMemKeyTypeActivity;
.super Landroid/app/Fragment;
.source "ChooserEncryptionMemKeyTypeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mListView:Lcom/android/settings/sdencryption/ChooserListView;

.field private mSelectedRow:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/sdencryption/ChooserEncryptionMemKeyTypeActivity;->mSelectedRow:I

    return-void
.end method

.method private returnUserSelection(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/settings/sdencryption/ChooserEncryptionMemKeyTypeActivity;->mListView:Lcom/android/settings/sdencryption/ChooserListView;

    invoke-virtual {v0, p1}, Lcom/android/settings/sdencryption/ChooserListView;->setSelected(I)V

    .line 78
    iget v0, p0, Lcom/android/settings/sdencryption/ChooserEncryptionMemKeyTypeActivity;->mSelectedRow:I

    if-eq p1, v0, :cond_0

    .line 79
    invoke-static {p1}, Lcom/android/settings/sdencryption/EncryptionUserActivity;->setSelEncrKeyTypeId(I)V

    .line 81
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/sdencryption/ChooserEncryptionMemKeyTypeActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 82
    return-void
.end method

.method private showInfoActivity(I)V
    .locals 7

    .prologue
    const v1, 0x7f0b00f3

    .line 88
    packed-switch p1, :pswitch_data_0

    .line 106
    invoke-virtual {p0, v1}, Lcom/android/settings/sdencryption/ChooserEncryptionMemKeyTypeActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 109
    :goto_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 110
    const-string v3, "INFO_TITLE"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 111
    const-string v1, "INFO_DESCRYPTION"

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    invoke-virtual {p0}, Lcom/android/settings/sdencryption/ChooserEncryptionMemKeyTypeActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 114
    const-class v1, Lcom/android/settings/sdencryption/ChooserInfoActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const v6, 0x7f0b00ce

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 116
    return-void

    .line 90
    :pswitch_0
    const v1, 0x7f0b00cf

    .line 91
    const v0, 0x7f0b00d0

    invoke-virtual {p0, v0}, Lcom/android/settings/sdencryption/ChooserEncryptionMemKeyTypeActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "\n\n"

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 92
    const v2, 0x7f0b00d1

    invoke-virtual {p0, v2}, Lcom/android/settings/sdencryption/ChooserEncryptionMemKeyTypeActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 95
    :pswitch_1
    const v1, 0x7f0b00d2

    .line 96
    const v0, 0x7f0b00d3

    invoke-virtual {p0, v0}, Lcom/android/settings/sdencryption/ChooserEncryptionMemKeyTypeActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "\n\n"

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 97
    const v2, 0x7f0b00d4

    invoke-virtual {p0, v2}, Lcom/android/settings/sdencryption/ChooserEncryptionMemKeyTypeActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 100
    :pswitch_2
    const v1, 0x7f0b00d5

    .line 101
    const v0, 0x7f0b00d6

    invoke-virtual {p0, v0}, Lcom/android/settings/sdencryption/ChooserEncryptionMemKeyTypeActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "\n\n"

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 102
    const v2, 0x7f0b00d7

    invoke-virtual {p0, v2}, Lcom/android/settings/sdencryption/ChooserEncryptionMemKeyTypeActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 88
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/android/settings/sdencryption/ChooserEncryptionMemKeyTypeActivity;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 44
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 45
    const-string v1, "SELECTED_ROW"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/sdencryption/ChooserEncryptionMemKeyTypeActivity;->mSelectedRow:I

    .line 47
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/sdencryption/ChooserEncryptionMemKeyTypeActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f080157

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/settings/sdencryption/ChooserListView;

    iput-object v1, p0, Lcom/android/settings/sdencryption/ChooserEncryptionMemKeyTypeActivity;->mListView:Lcom/android/settings/sdencryption/ChooserListView;

    .line 48
    iget-object v1, p0, Lcom/android/settings/sdencryption/ChooserEncryptionMemKeyTypeActivity;->mListView:Lcom/android/settings/sdencryption/ChooserListView;

    invoke-virtual {v1}, Lcom/android/settings/sdencryption/ChooserListView;->commonInit()V

    .line 49
    iget-object v1, p0, Lcom/android/settings/sdencryption/ChooserEncryptionMemKeyTypeActivity;->mListView:Lcom/android/settings/sdencryption/ChooserListView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/settings/sdencryption/ChooserListView;->setItemsCanFocus(Z)V

    .line 51
    iget v1, p0, Lcom/android/settings/sdencryption/ChooserEncryptionMemKeyTypeActivity;->mSelectedRow:I

    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    .line 52
    iget-object v1, p0, Lcom/android/settings/sdencryption/ChooserEncryptionMemKeyTypeActivity;->mListView:Lcom/android/settings/sdencryption/ChooserListView;

    iget v2, p0, Lcom/android/settings/sdencryption/ChooserEncryptionMemKeyTypeActivity;->mSelectedRow:I

    invoke-virtual {v1, v2}, Lcom/android/settings/sdencryption/ChooserListView;->setSelected(I)V

    .line 55
    :cond_1
    iget-object v1, p0, Lcom/android/settings/sdencryption/ChooserEncryptionMemKeyTypeActivity;->mListView:Lcom/android/settings/sdencryption/ChooserListView;

    invoke-virtual {v1, p0}, Lcom/android/settings/sdencryption/ChooserListView;->setClickCallback(Landroid/view/View$OnClickListener;)V

    .line 57
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 58
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 61
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 63
    .local v0, "id":I
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 71
    const-string v1, "ChooserEncryptionMemKeyTypeActivity"

    const-string v2, "Error! View Id is not recognized"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :goto_0
    return-void

    .line 65
    :sswitch_0
    invoke-direct {p0, v0}, Lcom/android/settings/sdencryption/ChooserEncryptionMemKeyTypeActivity;->returnUserSelection(I)V

    goto :goto_0

    .line 68
    :sswitch_1
    invoke-direct {p0, v0}, Lcom/android/settings/sdencryption/ChooserEncryptionMemKeyTypeActivity;->showInfoActivity(I)V

    goto :goto_0

    .line 63
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f080158 -> :sswitch_0
        0x7f08015e -> :sswitch_1
    .end sparse-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 35
    const v1, 0x7f04008c

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 37
    .local v0, "v":Landroid/view/View;
    return-object v0
.end method
