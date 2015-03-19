.class Lcom/android/settings/wifi/WifiApManageDevices$DeviceEditDialog;
.super Landroid/app/AlertDialog;
.source "WifiApManageDevices.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiApManageDevices;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeviceEditDialog"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDevEntry:Landroid/widget/EditText;

.field private mDevice:Lcom/android/settings/wifi/ConnectedDevice;

.field private mMacEntry:Landroid/widget/EditText;

.field private mOKButton:Landroid/widget/Button;

.field private mView:Landroid/view/View;

.field final synthetic this$0:Lcom/android/settings/wifi/WifiApManageDevices;


# direct methods
.method protected constructor <init>(Lcom/android/settings/wifi/WifiApManageDevices;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 580
    iput-object p1, p0, Lcom/android/settings/wifi/WifiApManageDevices$DeviceEditDialog;->this$0:Lcom/android/settings/wifi/WifiApManageDevices;

    .line 581
    invoke-direct {p0, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 582
    iput-object p2, p0, Lcom/android/settings/wifi/WifiApManageDevices$DeviceEditDialog;->mContext:Landroid/content/Context;

    .line 583
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApManageDevices$DeviceEditDialog;->mDevice:Lcom/android/settings/wifi/ConnectedDevice;

    .line 584
    return-void
.end method

.method protected constructor <init>(Lcom/android/settings/wifi/WifiApManageDevices;Landroid/content/Context;Lcom/android/settings/wifi/ConnectedDevice;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "c"    # Lcom/android/settings/wifi/ConnectedDevice;

    .prologue
    .line 586
    iput-object p1, p0, Lcom/android/settings/wifi/WifiApManageDevices$DeviceEditDialog;->this$0:Lcom/android/settings/wifi/WifiApManageDevices;

    .line 587
    invoke-direct {p0, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 588
    iput-object p2, p0, Lcom/android/settings/wifi/WifiApManageDevices$DeviceEditDialog;->mContext:Landroid/content/Context;

    .line 589
    iput-object p3, p0, Lcom/android/settings/wifi/WifiApManageDevices$DeviceEditDialog;->mDevice:Lcom/android/settings/wifi/ConnectedDevice;

    .line 590
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 677
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApManageDevices$DeviceEditDialog;->mMacEntry:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v0

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiApManageDevices$DeviceEditDialog;->mMacEntry:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "([0-9a-fA-F]{2}:){5}[0-9a-fA-F]{2}"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 679
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApManageDevices$DeviceEditDialog;->mOKButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 683
    :goto_0
    return-void

    .line 681
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApManageDevices$DeviceEditDialog;->mOKButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 687
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v3, 0x0

    .line 634
    const/4 v1, -0x1

    if-ne p2, v1, :cond_4

    .line 635
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApManageDevices$DeviceEditDialog;->this$0:Lcom/android/settings/wifi/WifiApManageDevices;

    # invokes: Lcom/android/settings/wifi/WifiApManageDevices;->invokeServiceToUnBlackList(Ljava/lang/String;)V
    invoke-static {v1, v3}, Lcom/android/settings/wifi/WifiApManageDevices;->access$400(Lcom/android/settings/wifi/WifiApManageDevices;Ljava/lang/String;)V

    .line 636
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApManageDevices$DeviceEditDialog;->mMacEntry:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    .line 637
    .local v4, "macEntered":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApManageDevices$DeviceEditDialog;->mDevice:Lcom/android/settings/wifi/ConnectedDevice;

    if-eqz v1, :cond_3

    .line 638
    # getter for: Lcom/android/settings/wifi/WifiApManageDevices;->mAllowedDevices:Lcom/android/settings/wifi/WifiProgressCategory;
    invoke-static {}, Lcom/android/settings/wifi/WifiApManageDevices;->access$500()Lcom/android/settings/wifi/WifiProgressCategory;

    move-result-object v1

    iget-object v5, p0, Lcom/android/settings/wifi/WifiApManageDevices$DeviceEditDialog;->mDevice:Lcom/android/settings/wifi/ConnectedDevice;

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 639
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApManageDevices$DeviceEditDialog;->this$0:Lcom/android/settings/wifi/WifiApManageDevices;

    # getter for: Lcom/android/settings/wifi/WifiApManageDevices;->mSharedPrefsEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v1}, Lcom/android/settings/wifi/WifiApManageDevices;->access$600(Lcom/android/settings/wifi/WifiApManageDevices;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iget-object v5, p0, Lcom/android/settings/wifi/WifiApManageDevices$DeviceEditDialog;->mDevice:Lcom/android/settings/wifi/ConnectedDevice;

    iget-object v5, v5, Lcom/android/settings/wifi/ConnectedDevice;->mMACAddress:Ljava/lang/String;

    invoke-interface {v1, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 646
    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApManageDevices$DeviceEditDialog;->mDevEntry:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 647
    .local v2, "editedDevName":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 648
    sget-object v2, Lcom/android/settings/wifi/WifiApDefaults;->UNKNOWN_STA_NAME:Ljava/lang/String;

    .line 650
    :cond_1
    new-instance v0, Lcom/android/settings/wifi/ConnectedDevice;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApManageDevices$DeviceEditDialog;->mContext:Landroid/content/Context;

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/wifi/ConnectedDevice;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/text/format/Time;)V

    .line 655
    .local v0, "c":Lcom/android/settings/wifi/ConnectedDevice;
    # getter for: Lcom/android/settings/wifi/WifiApManageDevices;->mAllowedDevices:Lcom/android/settings/wifi/WifiProgressCategory;
    invoke-static {}, Lcom/android/settings/wifi/WifiApManageDevices;->access$500()Lcom/android/settings/wifi/WifiProgressCategory;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 656
    # getter for: Lcom/android/settings/wifi/WifiApManageDevices;->mAllowedDevices:Lcom/android/settings/wifi/WifiProgressCategory;
    invoke-static {}, Lcom/android/settings/wifi/WifiApManageDevices;->access$500()Lcom/android/settings/wifi/WifiProgressCategory;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    const-string v3, "wifi_ap_allow_all_devices"

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    .line 658
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApManageDevices$DeviceEditDialog;->this$0:Lcom/android/settings/wifi/WifiApManageDevices;

    # getter for: Lcom/android/settings/wifi/WifiApManageDevices;->mSharedPrefsEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v1}, Lcom/android/settings/wifi/WifiApManageDevices;->access$600(Lcom/android/settings/wifi/WifiApManageDevices;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v4, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 673
    .end local v0    # "c":Lcom/android/settings/wifi/ConnectedDevice;
    .end local v2    # "editedDevName":Ljava/lang/String;
    .end local v4    # "macEntered":Ljava/lang/String;
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 674
    :goto_1
    return-void

    .line 641
    .restart local v4    # "macEntered":Ljava/lang/String;
    :cond_3
    # getter for: Lcom/android/settings/wifi/WifiApManageDevices;->mSharedPrefs:Landroid/content/SharedPreferences;
    invoke-static {}, Lcom/android/settings/wifi/WifiApManageDevices;->access$700()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 642
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApManageDevices$DeviceEditDialog;->mContext:Landroid/content/Context;

    const v3, 0x7f0b007d

    const/4 v5, 0x0

    invoke-static {v1, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 659
    .end local v4    # "macEntered":Ljava/lang/String;
    :cond_4
    const/4 v1, -0x3

    if-ne p2, v1, :cond_2

    .line 660
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApManageDevices$DeviceEditDialog;->this$0:Lcom/android/settings/wifi/WifiApManageDevices;

    # invokes: Lcom/android/settings/wifi/WifiApManageDevices;->invokeServiceToUnBlackList(Ljava/lang/String;)V
    invoke-static {v1, v3}, Lcom/android/settings/wifi/WifiApManageDevices;->access$400(Lcom/android/settings/wifi/WifiApManageDevices;Ljava/lang/String;)V

    .line 661
    # getter for: Lcom/android/settings/wifi/WifiApManageDevices;->mAllowedDevices:Lcom/android/settings/wifi/WifiProgressCategory;
    invoke-static {}, Lcom/android/settings/wifi/WifiApManageDevices;->access$500()Lcom/android/settings/wifi/WifiProgressCategory;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/wifi/WifiApManageDevices$DeviceEditDialog;->mDevice:Lcom/android/settings/wifi/ConnectedDevice;

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 663
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApManageDevices$DeviceEditDialog;->this$0:Lcom/android/settings/wifi/WifiApManageDevices;

    # getter for: Lcom/android/settings/wifi/WifiApManageDevices;->mSharedPrefsEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v1}, Lcom/android/settings/wifi/WifiApManageDevices;->access$600(Lcom/android/settings/wifi/WifiApManageDevices;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/wifi/WifiApManageDevices$DeviceEditDialog;->mDevice:Lcom/android/settings/wifi/ConnectedDevice;

    iget-object v3, v3, Lcom/android/settings/wifi/ConnectedDevice;->mMACAddress:Ljava/lang/String;

    invoke-interface {v1, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 666
    # getter for: Lcom/android/settings/wifi/WifiApManageDevices;->mSharedPrefs:Landroid/content/SharedPreferences;
    invoke-static {}, Lcom/android/settings/wifi/WifiApManageDevices;->access$700()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_5

    .line 667
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApManageDevices$DeviceEditDialog;->this$0:Lcom/android/settings/wifi/WifiApManageDevices;

    # getter for: Lcom/android/settings/wifi/WifiApManageDevices;->mSharedPrefsEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v1}, Lcom/android/settings/wifi/WifiApManageDevices;->access$600(Lcom/android/settings/wifi/WifiApManageDevices;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v3, "wifi_ap_allow_all_devices"

    invoke-interface {v1, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 668
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApManageDevices$DeviceEditDialog;->this$0:Lcom/android/settings/wifi/WifiApManageDevices;

    # getter for: Lcom/android/settings/wifi/WifiApManageDevices;->mSharedPrefsEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v1}, Lcom/android/settings/wifi/WifiApManageDevices;->access$600(Lcom/android/settings/wifi/WifiApManageDevices;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v3, "wifi_ap_allow_all_devices"

    const-string v5, "TRUE"

    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 670
    :cond_5
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApManageDevices$DeviceEditDialog;->this$0:Lcom/android/settings/wifi/WifiApManageDevices;

    # getter for: Lcom/android/settings/wifi/WifiApManageDevices;->mSharedPrefsEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v1}, Lcom/android/settings/wifi/WifiApManageDevices;->access$600(Lcom/android/settings/wifi/WifiApManageDevices;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, -0x1

    .line 594
    invoke-virtual {p0}, Landroid/app/Dialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04008e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApManageDevices$DeviceEditDialog;->mView:Landroid/view/View;

    .line 595
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApManageDevices$DeviceEditDialog;->mView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 596
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApManageDevices$DeviceEditDialog;->this$0:Lcom/android/settings/wifi/WifiApManageDevices;

    # getter for: Lcom/android/settings/wifi/WifiApManageDevices;->mRes:Landroid/content/res/Resources;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiApManageDevices;->access$300(Lcom/android/settings/wifi/WifiApManageDevices;)Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0065

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v3, v0, p0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 597
    const/4 v0, -0x2

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApManageDevices$DeviceEditDialog;->this$0:Lcom/android/settings/wifi/WifiApManageDevices;

    # getter for: Lcom/android/settings/wifi/WifiApManageDevices;->mRes:Landroid/content/res/Resources;
    invoke-static {v1}, Lcom/android/settings/wifi/WifiApManageDevices;->access$300(Lcom/android/settings/wifi/WifiApManageDevices;)Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b021f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 598
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApManageDevices$DeviceEditDialog;->mDevice:Lcom/android/settings/wifi/ConnectedDevice;

    if-eqz v0, :cond_1

    .line 599
    const/4 v0, -0x3

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApManageDevices$DeviceEditDialog;->this$0:Lcom/android/settings/wifi/WifiApManageDevices;

    # getter for: Lcom/android/settings/wifi/WifiApManageDevices;->mRes:Landroid/content/res/Resources;
    invoke-static {v1}, Lcom/android/settings/wifi/WifiApManageDevices;->access$300(Lcom/android/settings/wifi/WifiApManageDevices;)Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b06f4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 600
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApManageDevices$DeviceEditDialog;->this$0:Lcom/android/settings/wifi/WifiApManageDevices;

    # getter for: Lcom/android/settings/wifi/WifiApManageDevices;->mRes:Landroid/content/res/Resources;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiApManageDevices;->access$300(Lcom/android/settings/wifi/WifiApManageDevices;)Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0077

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 604
    :goto_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->setInverseBackgroundForced(Z)V

    .line 605
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApManageDevices$DeviceEditDialog;->mView:Landroid/view/View;

    const v1, 0x7f080199

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApManageDevices$DeviceEditDialog;->mMacEntry:Landroid/widget/EditText;

    .line 606
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApManageDevices$DeviceEditDialog;->mView:Landroid/view/View;

    const v1, 0x7f08019b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApManageDevices$DeviceEditDialog;->mDevEntry:Landroid/widget/EditText;

    .line 607
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApManageDevices$DeviceEditDialog;->mMacEntry:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 609
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApManageDevices$DeviceEditDialog;->mMacEntry:Landroid/widget/EditText;

    new-instance v1, Lcom/android/settings/wifi/WifiApManageDevices$DeviceEditDialog$1;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/WifiApManageDevices$DeviceEditDialog$1;-><init>(Lcom/android/settings/wifi/WifiApManageDevices$DeviceEditDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 616
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 617
    invoke-virtual {p0, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApManageDevices$DeviceEditDialog;->mOKButton:Landroid/widget/Button;

    .line 618
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApManageDevices$DeviceEditDialog;->mDevice:Lcom/android/settings/wifi/ConnectedDevice;

    if-eqz v0, :cond_2

    .line 619
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApManageDevices$DeviceEditDialog;->mMacEntry:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApManageDevices$DeviceEditDialog;->mDevice:Lcom/android/settings/wifi/ConnectedDevice;

    iget-object v1, v1, Lcom/android/settings/wifi/ConnectedDevice;->mMACAddress:Ljava/lang/String;

    sget-object v2, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v0, v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 620
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApManageDevices$DeviceEditDialog;->mDevice:Lcom/android/settings/wifi/ConnectedDevice;

    iget-object v0, v0, Lcom/android/settings/wifi/ConnectedDevice;->mDeviceName:Ljava/lang/String;

    sget-object v1, Lcom/android/settings/wifi/WifiApDefaults;->UNKNOWN_STA_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 621
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApManageDevices$DeviceEditDialog;->mDevEntry:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApManageDevices$DeviceEditDialog;->mDevice:Lcom/android/settings/wifi/ConnectedDevice;

    iget-object v1, v1, Lcom/android/settings/wifi/ConnectedDevice;->mDeviceName:Ljava/lang/String;

    sget-object v2, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v0, v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 626
    :cond_0
    :goto_1
    return-void

    .line 602
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApManageDevices$DeviceEditDialog;->this$0:Lcom/android/settings/wifi/WifiApManageDevices;

    # getter for: Lcom/android/settings/wifi/WifiApManageDevices;->mRes:Landroid/content/res/Resources;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiApManageDevices;->access$300(Lcom/android/settings/wifi/WifiApManageDevices;)Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0076

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 624
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApManageDevices$DeviceEditDialog;->mOKButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_1
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 691
    return-void
.end method
