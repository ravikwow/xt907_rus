.class public Lcom/android/settings/sdencryption/ChooserInfoActivity;
.super Landroid/app/Fragment;
.source "ChooserInfoActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    .line 24
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 27
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 33
    const v1, 0x7f04008e

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 35
    .local v0, "v":Landroid/view/View;
    return-object v0
.end method

.method public onResume()V
    .locals 8

    .prologue
    const v7, 0x7f0b00f3

    .line 40
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 41
    invoke-virtual {p0}, Lcom/android/settings/sdencryption/ChooserInfoActivity;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f0b00ce

    invoke-virtual {v5, v6}, Landroid/app/Activity;->setTitle(I)V

    .line 42
    invoke-virtual {p0}, Lcom/android/settings/sdencryption/ChooserInfoActivity;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f080160

    invoke-virtual {v5, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 43
    .local v4, "tvTitle":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/settings/sdencryption/ChooserInfoActivity;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f080161

    invoke-virtual {v5, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 45
    .local v3, "tvDesc":Landroid/widget/TextView;
    const v2, 0x7f0b00f3

    .line 46
    .local v2, "title":I
    invoke-virtual {p0, v7}, Lcom/android/settings/sdencryption/ChooserInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 48
    .local v1, "desc":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/sdencryption/ChooserInfoActivity;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 49
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 50
    const-string v5, "INFO_TITLE"

    invoke-virtual {v0, v5, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 51
    const-string v5, "INFO_DESCRYPTION"

    invoke-virtual {p0, v7}, Lcom/android/settings/sdencryption/ChooserInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 54
    :cond_0
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(I)V

    .line 55
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    return-void
.end method
