.class Lcom/android/settings/Settings$HeaderAdapter;
.super Landroid/widget/ArrayAdapter;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HeaderAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Landroid/preference/PreferenceActivity$Header;",
        ">;"
    }
.end annotation


# static fields
.field private static mWifiHolder:Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;


# instance fields
.field private final mAirplaneSwitcher:Lcom/motorola/settings/AirplaneModeSwitcher;

.field private mAuthHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

.field private final mBluetoothEnabler:Lcom/motorola/settings/VzwBluetoothEnabler;

.field private mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field private mInflater:Landroid/view/LayoutInflater;

.field private final mWifiEnabler:Lcom/motorola/settings/VzwWifiEnabler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/android/settings/accounts/AuthenticatorHelper;Landroid/app/admin/DevicePolicyManager;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "authenticatorHelper"    # Lcom/android/settings/accounts/AuthenticatorHelper;
    .param p4, "dpm"    # Landroid/app/admin/DevicePolicyManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;",
            "Lcom/android/settings/accounts/AuthenticatorHelper;",
            "Landroid/app/admin/DevicePolicyManager;",
            ")V"
        }
    .end annotation

    .prologue
    .line 934
    .local p2, "objects":Ljava/util/List;, "Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 936
    iput-object p3, p0, Lcom/android/settings/Settings$HeaderAdapter;->mAuthHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    .line 937
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 942
    new-instance v0, Lcom/motorola/settings/VzwWifiEnabler;

    new-instance v1, Landroid/widget/Switch;

    invoke-direct {v1, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1}, Lcom/motorola/settings/VzwWifiEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mWifiEnabler:Lcom/motorola/settings/VzwWifiEnabler;

    .line 943
    new-instance v0, Lcom/motorola/settings/VzwBluetoothEnabler;

    new-instance v1, Landroid/widget/Switch;

    invoke-direct {v1, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1}, Lcom/motorola/settings/VzwBluetoothEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mBluetoothEnabler:Lcom/motorola/settings/VzwBluetoothEnabler;

    .line 944
    new-instance v0, Lcom/motorola/settings/AirplaneModeSwitcher;

    new-instance v1, Landroid/widget/Switch;

    invoke-direct {v1, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1}, Lcom/motorola/settings/AirplaneModeSwitcher;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mAirplaneSwitcher:Lcom/motorola/settings/AirplaneModeSwitcher;

    .line 946
    iput-object p4, p0, Lcom/android/settings/Settings$HeaderAdapter;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 947
    return-void
.end method

.method static getHeaderType(Landroid/preference/PreferenceActivity$Header;)I
    .locals 5
    .param p0, "header"    # Landroid/preference/PreferenceActivity$Header;

    .prologue
    const/4 v0, 0x2

    .line 890
    iget-object v1, p0, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    if-nez v1, :cond_2

    iget-object v1, p0, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    if-nez v1, :cond_2

    .line 892
    iget-wide v1, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v3, 0x7f080240

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    .line 902
    :cond_0
    :goto_0
    return v0

    .line 896
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 897
    :cond_2
    iget-wide v1, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v3, 0x7f080241

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    iget-wide v1, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v3, 0x7f080242

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 899
    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f080252

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    .line 900
    const/4 v0, 0x3

    goto :goto_0

    .line 902
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private setHeaderIcon(Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "holder"    # Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;
    .param p2, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1111
    iget-object v1, p1, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1112
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0}, Lcom/android/settings/Settings$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d001a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1114
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1115
    iget-object v1, p1, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1116
    iget-object v1, p1, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1117
    return-void
.end method

.method private updateCommonHeaderView(Landroid/preference/PreferenceActivity$Header;Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;)V
    .locals 1
    .param p1, "header"    # Landroid/preference/PreferenceActivity$Header;
    .param p2, "holder"    # Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;

    .prologue
    .line 1081
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/Settings$HeaderAdapter;->updateCommonHeaderView(Landroid/preference/PreferenceActivity$Header;Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;Z)V

    .line 1082
    return-void
.end method

.method private updateCommonHeaderView(Landroid/preference/PreferenceActivity$Header;Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;Z)V
    .locals 6
    .param p1, "header"    # Landroid/preference/PreferenceActivity$Header;
    .param p2, "holder"    # Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;
    .param p3, "hasSummary"    # Z

    .prologue
    const/4 v5, 0x0

    .line 1087
    iget-object v3, p1, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    if-eqz v3, :cond_0

    iget-object v3, p1, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    const-string v4, "account_type"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1089
    iget-object v3, p1, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    const-string v4, "account_type"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1091
    .local v0, "accType":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/Settings$HeaderAdapter;->mAuthHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-virtual {p0}, Lcom/android/settings/Settings$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Lcom/android/settings/accounts/AuthenticatorHelper;->getDrawableForType(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1092
    .local v1, "icon":Landroid/graphics/drawable/Drawable;
    invoke-direct {p0, p2, v1}, Lcom/android/settings/Settings$HeaderAdapter;->setHeaderIcon(Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;Landroid/graphics/drawable/Drawable;)V

    .line 1096
    .end local v0    # "accType":Ljava/lang/String;
    .end local v1    # "icon":Landroid/graphics/drawable/Drawable;
    :goto_0
    iget-object v3, p2, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/Settings$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/preference/PreferenceActivity$Header;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1097
    invoke-virtual {p0}, Lcom/android/settings/Settings$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/preference/PreferenceActivity$Header;->getSummary(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1099
    .local v2, "summary":Ljava/lang/CharSequence;
    if-eqz p3, :cond_1

    .line 1100
    iget-object v3, p2, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1108
    :goto_1
    return-void

    .line 1094
    .end local v2    # "summary":Ljava/lang/CharSequence;
    :cond_0
    iget-object v3, p2, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    iget v4, p1, Landroid/preference/PreferenceActivity$Header;->iconRes:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 1102
    .restart local v2    # "summary":Ljava/lang/CharSequence;
    :cond_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1103
    iget-object v3, p2, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1104
    iget-object v3, p2, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1106
    :cond_2
    iget-object v3, p2, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 914
    const/4 v0, 0x0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 908
    invoke-virtual {p0, p1}, Lcom/android/settings/Settings$HeaderAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    .line 909
    .local v0, "header":Landroid/preference/PreferenceActivity$Header;
    invoke-static {v0}, Lcom/android/settings/Settings$HeaderAdapter;->getHeaderType(Landroid/preference/PreferenceActivity$Header;)I

    move-result v1

    return v1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 952
    invoke-virtual {p0, p1}, Lcom/android/settings/Settings$HeaderAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceActivity$Header;

    .line 953
    .local v2, "header":Landroid/preference/PreferenceActivity$Header;
    invoke-static {v2}, Lcom/android/settings/Settings$HeaderAdapter;->getHeaderType(Landroid/preference/PreferenceActivity$Header;)I

    move-result v3

    .line 954
    .local v3, "headerType":I
    const/4 v6, 0x0

    .line 955
    .local v6, "view":Landroid/view/View;
    const/4 v1, 0x0

    .line 957
    .local v1, "hasSummary":Z
    if-nez p2, :cond_0

    .line 958
    new-instance v4, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;

    const/4 v7, 0x0

    invoke-direct {v4, v7}, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;-><init>(Lcom/android/settings/Settings$1;)V

    .line 959
    .local v4, "holder":Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;
    packed-switch v3, :pswitch_data_0

    .line 1000
    :goto_0
    invoke-virtual {v6, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1007
    :goto_1
    packed-switch v3, :pswitch_data_1

    .line 1076
    :goto_2
    return-object v6

    .line 961
    :pswitch_0
    new-instance v6, Landroid/widget/TextView;

    .end local v6    # "view":Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/settings/Settings$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v7

    const/4 v8, 0x0

    const v9, 0x1010208

    invoke-direct {v6, v7, v8, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .restart local v6    # "view":Landroid/view/View;
    move-object v7, v6

    .line 963
    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v4, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    goto :goto_0

    .line 967
    :pswitch_1
    iget-object v7, p0, Lcom/android/settings/Settings$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v8, 0x7f04006a

    const/4 v9, 0x0

    invoke-virtual {v7, v8, p3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 969
    const v7, 0x7f080025

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, v4, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    .line 970
    const v7, 0x1020016

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v4, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    .line 972
    const v7, 0x1020010

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v4, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    .line 974
    const v7, 0x7f08000e

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Switch;

    iput-object v7, v4, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    goto :goto_0

    .line 978
    :pswitch_2
    iget-object v7, p0, Lcom/android/settings/Settings$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v8, 0x7f040068

    const/4 v9, 0x0

    invoke-virtual {v7, v8, p3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 980
    const v7, 0x7f080025

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, v4, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    .line 981
    const v7, 0x1020016

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v4, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    .line 983
    const v7, 0x1020010

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v4, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    .line 985
    const v7, 0x7f0800fd

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageButton;

    iput-object v7, v4, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->button_:Landroid/widget/ImageButton;

    .line 986
    const v7, 0x7f08004f

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, v4, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->divider_:Landroid/view/View;

    goto/16 :goto_0

    .line 990
    :pswitch_3
    iget-object v7, p0, Lcom/android/settings/Settings$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v8, 0x7f040069

    const/4 v9, 0x0

    invoke-virtual {v7, v8, p3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 993
    const v7, 0x7f080025

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, v4, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    .line 994
    const v7, 0x1020016

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v4, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    .line 996
    const v7, 0x1020010

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v4, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    goto/16 :goto_0

    .line 1002
    .end local v4    # "holder":Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;
    :cond_0
    move-object v6, p2

    .line 1003
    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;

    .restart local v4    # "holder":Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;
    goto/16 :goto_1

    .line 1009
    :pswitch_4
    iget-object v7, v4, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/Settings$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/preference/PreferenceActivity$Header;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 1015
    :pswitch_5
    iget-wide v7, v2, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v9, 0x7f080241

    cmp-long v7, v7, v9

    if-nez v7, :cond_2

    .line 1016
    iget-object v7, p0, Lcom/android/settings/Settings$HeaderAdapter;->mWifiEnabler:Lcom/motorola/settings/VzwWifiEnabler;

    iget-object v8, v4, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    invoke-virtual {v7, v8}, Lcom/motorola/settings/VzwWifiEnabler;->setSwitch(Landroid/widget/Switch;)V

    .line 1018
    sput-object v4, Lcom/android/settings/Settings$HeaderAdapter;->mWifiHolder:Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;

    .line 1019
    # invokes: Lcom/android/settings/Settings;->isWifiRestricted()Z
    invoke-static {}, Lcom/android/settings/Settings;->access$400()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1020
    sget-object v7, Lcom/android/settings/Settings$HeaderAdapter;->mWifiHolder:Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;

    if-eqz v7, :cond_1

    .line 1021
    iget-object v7, v4, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 1022
    iget-object v7, v4, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1023
    iget-object v7, v4, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1024
    iget-object v7, v4, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1025
    const-string v7, "Settings"

    const-string v8, "device WIFI is Restricted: true"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1029
    :cond_1
    iget-object v7, p0, Lcom/android/settings/Settings$HeaderAdapter;->mWifiEnabler:Lcom/motorola/settings/VzwWifiEnabler;

    iget-object v8, v4, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v7, v8}, Lcom/motorola/settings/VzwWifiEnabler;->setSummaryView(Landroid/widget/TextView;)V

    .line 1030
    const/4 v1, 0x1

    .line 1038
    :goto_3
    invoke-direct {p0, v2, v4, v1}, Lcom/android/settings/Settings$HeaderAdapter;->updateCommonHeaderView(Landroid/preference/PreferenceActivity$Header;Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;Z)V

    goto/16 :goto_2

    .line 1031
    :cond_2
    iget-wide v7, v2, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v9, 0x7f080240

    cmp-long v7, v7, v9

    if-nez v7, :cond_3

    .line 1032
    iget-object v7, p0, Lcom/android/settings/Settings$HeaderAdapter;->mAirplaneSwitcher:Lcom/motorola/settings/AirplaneModeSwitcher;

    iget-object v8, v4, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    invoke-virtual {v7, v8}, Lcom/motorola/settings/AirplaneModeSwitcher;->setSwitch(Landroid/widget/Switch;)V

    goto :goto_3

    .line 1034
    :cond_3
    iget-object v7, p0, Lcom/android/settings/Settings$HeaderAdapter;->mBluetoothEnabler:Lcom/motorola/settings/VzwBluetoothEnabler;

    iget-object v8, v4, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    invoke-virtual {v7, v8}, Lcom/motorola/settings/VzwBluetoothEnabler;->setSwitch(Landroid/widget/Switch;)V

    .line 1035
    iget-object v7, p0, Lcom/android/settings/Settings$HeaderAdapter;->mBluetoothEnabler:Lcom/motorola/settings/VzwBluetoothEnabler;

    iget-object v8, v4, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v7, v8}, Lcom/motorola/settings/VzwBluetoothEnabler;->setSummaryView(Landroid/widget/TextView;)V

    .line 1036
    const/4 v1, 0x1

    goto :goto_3

    .line 1043
    :pswitch_6
    iget-wide v7, v2, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v9, 0x7f080252

    cmp-long v7, v7, v9

    if-nez v7, :cond_4

    .line 1044
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->hasAnyCaCertsInstalled()Z

    move-result v0

    .line 1045
    .local v0, "hasCert":Z
    if-eqz v0, :cond_7

    .line 1046
    iget-object v7, v4, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->button_:Landroid/widget/ImageButton;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1047
    iget-object v7, v4, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->divider_:Landroid/view/View;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1048
    iget-object v7, p0, Lcom/android/settings/Settings$HeaderAdapter;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v7}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwner()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_5

    const/4 v5, 0x1

    .line 1049
    .local v5, "isManaged":Z
    :goto_4
    if-eqz v5, :cond_6

    .line 1050
    iget-object v7, v4, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->button_:Landroid/widget/ImageButton;

    const v8, 0x7f020063

    invoke-virtual {v7, v8}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1055
    :goto_5
    iget-object v7, v4, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->button_:Landroid/widget/ImageButton;

    new-instance v8, Lcom/android/settings/Settings$HeaderAdapter$1;

    invoke-direct {v8, p0}, Lcom/android/settings/Settings$HeaderAdapter$1;-><init>(Lcom/android/settings/Settings$HeaderAdapter;)V

    invoke-virtual {v7, v8}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1068
    .end local v0    # "hasCert":Z
    .end local v5    # "isManaged":Z
    :cond_4
    :goto_6
    invoke-direct {p0, v2, v4}, Lcom/android/settings/Settings$HeaderAdapter;->updateCommonHeaderView(Landroid/preference/PreferenceActivity$Header;Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;)V

    goto/16 :goto_2

    .line 1048
    .restart local v0    # "hasCert":Z
    :cond_5
    const/4 v5, 0x0

    goto :goto_4

    .line 1052
    .restart local v5    # "isManaged":Z
    :cond_6
    iget-object v7, v4, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->button_:Landroid/widget/ImageButton;

    const v8, 0x1080078

    invoke-virtual {v7, v8}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_5

    .line 1064
    .end local v5    # "isManaged":Z
    :cond_7
    iget-object v7, v4, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->button_:Landroid/widget/ImageButton;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1065
    iget-object v7, v4, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->divider_:Landroid/view/View;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6

    .line 1072
    .end local v0    # "hasCert":Z
    :pswitch_7
    invoke-direct {p0, v2, v4}, Lcom/android/settings/Settings$HeaderAdapter;->updateCommonHeaderView(Landroid/preference/PreferenceActivity$Header;Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;)V

    goto/16 :goto_2

    .line 959
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 1007
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_7
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 924
    const/4 v0, 0x4

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 929
    const/4 v0, 0x1

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 919
    invoke-virtual {p0, p1}, Lcom/android/settings/Settings$HeaderAdapter;->getItemViewType(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 1138
    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mWifiEnabler:Lcom/motorola/settings/VzwWifiEnabler;

    invoke-virtual {v0}, Lcom/motorola/settings/VzwWifiEnabler;->pause()V

    .line 1139
    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mBluetoothEnabler:Lcom/motorola/settings/VzwBluetoothEnabler;

    invoke-virtual {v0}, Lcom/motorola/settings/VzwBluetoothEnabler;->pause()V

    .line 1140
    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mAirplaneSwitcher:Lcom/motorola/settings/AirplaneModeSwitcher;

    invoke-virtual {v0}, Lcom/motorola/settings/AirplaneModeSwitcher;->pause()V

    .line 1141
    return-void
.end method

.method public resume()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1120
    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mWifiEnabler:Lcom/motorola/settings/VzwWifiEnabler;

    invoke-virtual {v0}, Lcom/motorola/settings/VzwWifiEnabler;->resume()V

    .line 1121
    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mBluetoothEnabler:Lcom/motorola/settings/VzwBluetoothEnabler;

    invoke-virtual {v0}, Lcom/motorola/settings/VzwBluetoothEnabler;->resume()V

    .line 1122
    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mAirplaneSwitcher:Lcom/motorola/settings/AirplaneModeSwitcher;

    invoke-virtual {v0}, Lcom/motorola/settings/AirplaneModeSwitcher;->resume()V

    .line 1125
    # invokes: Lcom/android/settings/Settings;->isWifiRestricted()Z
    invoke-static {}, Lcom/android/settings/Settings;->access$400()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1126
    sget-object v0, Lcom/android/settings/Settings$HeaderAdapter;->mWifiHolder:Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;

    if-eqz v0, :cond_0

    .line 1127
    sget-object v0, Lcom/android/settings/Settings$HeaderAdapter;->mWifiHolder:Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;

    iget-object v0, v0, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 1128
    sget-object v0, Lcom/android/settings/Settings$HeaderAdapter;->mWifiHolder:Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;

    iget-object v0, v0, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1129
    sget-object v0, Lcom/android/settings/Settings$HeaderAdapter;->mWifiHolder:Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;

    iget-object v0, v0, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1130
    sget-object v0, Lcom/android/settings/Settings$HeaderAdapter;->mWifiHolder:Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;

    iget-object v0, v0, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1131
    const-string v0, "Settings"

    const-string v1, "device WIFI is Restricted: false"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1135
    :cond_0
    return-void
.end method
