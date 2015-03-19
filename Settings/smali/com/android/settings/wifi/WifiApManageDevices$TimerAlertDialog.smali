.class Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;
.super Landroid/app/AlertDialog;
.source "WifiApManageDevices.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiApManageDevices;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimerAlertDialog"
.end annotation


# instance fields
.field private mDevice:Lcom/android/settings/wifi/ConnectedDevice;

.field private mDuration:Landroid/text/format/Time;

.field private mGroup:Landroid/view/ViewGroup;

.field private mTimeView:Landroid/view/View;

.field private mUpdateTimeTask:Ljava/lang/Runnable;

.field private mView:Landroid/view/View;

.field final synthetic this$0:Lcom/android/settings/wifi/WifiApManageDevices;


# direct methods
.method protected constructor <init>(Lcom/android/settings/wifi/WifiApManageDevices;Landroid/content/Context;Lcom/android/settings/wifi/ConnectedDevice;)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "dev"    # Lcom/android/settings/wifi/ConnectedDevice;

    .prologue
    .line 779
    iput-object p1, p0, Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;->this$0:Lcom/android/settings/wifi/WifiApManageDevices;

    .line 780
    invoke-direct {p0, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 772
    new-instance v0, Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog$1;-><init>(Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;->mUpdateTimeTask:Ljava/lang/Runnable;

    .line 781
    iput-object p3, p0, Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;->mDevice:Lcom/android/settings/wifi/ConnectedDevice;

    .line 782
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;->mDuration:Landroid/text/format/Time;

    .line 783
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;->mDuration:Landroid/text/format/Time;

    const-string v1, "GMT"

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    .line 784
    return-void
.end method

.method static synthetic access$1200(Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;

    .prologue
    .line 765
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;->updateFields()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;)Lcom/android/settings/wifi/ConnectedDevice;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;

    .prologue
    .line 765
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;->mDevice:Lcom/android/settings/wifi/ConnectedDevice;

    return-object v0
.end method

.method private addRow(Landroid/view/ViewGroup;ILjava/lang/String;)Landroid/view/View;
    .locals 4
    .param p1, "group"    # Landroid/view/ViewGroup;
    .param p2, "name"    # I
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 839
    invoke-virtual {p0}, Landroid/app/Dialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040095

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 840
    .local v0, "row":Landroid/view/View;
    const v1, 0x7f080076

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 841
    const v1, 0x7f0800c3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 842
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 843
    return-object v0
.end method

.method private updateFields()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 829
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 830
    .local v0, "now":Landroid/text/format/Time;
    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 831
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;->mDuration:Landroid/text/format/Time;

    invoke-virtual {v0, v5}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;->mDevice:Lcom/android/settings/wifi/ConnectedDevice;

    iget-object v4, v4, Lcom/android/settings/wifi/ConnectedDevice;->mConnectTime:Landroid/text/format/Time;

    invoke-virtual {v4, v5}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Landroid/text/format/Time;->set(J)V

    .line 832
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;->mTimeView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 833
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;->mGroup:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;->mTimeView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 835
    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;->mGroup:Landroid/view/ViewGroup;

    const v2, 0x7f0b0064

    iget-object v3, p0, Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;->mDuration:Landroid/text/format/Time;

    const-string v4, "%H:%M:%S"

    invoke-virtual {v3, v4}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;->mTimeView:Landroid/view/View;

    .line 836
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 809
    const/4 v4, -0x2

    if-ne p2, v4, :cond_0

    .line 810
    iget-object v4, p0, Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;->this$0:Lcom/android/settings/wifi/WifiApManageDevices;

    iget-object v5, p0, Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;->mDevice:Lcom/android/settings/wifi/ConnectedDevice;

    iget-object v5, v5, Lcom/android/settings/wifi/ConnectedDevice;->mMACAddress:Ljava/lang/String;

    # invokes: Lcom/android/settings/wifi/WifiApManageDevices;->invokeServiceToUnBlackList(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/settings/wifi/WifiApManageDevices;->access$400(Lcom/android/settings/wifi/WifiApManageDevices;Ljava/lang/String;)V

    .line 811
    # getter for: Lcom/android/settings/wifi/WifiApManageDevices;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/settings/wifi/WifiApManageDevices;->access$1100()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/wifi/WifiApManageDevices;->isWhiteListAllEnabled(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 812
    # getter for: Lcom/android/settings/wifi/WifiApManageDevices;->mSharedPrefs:Landroid/content/SharedPreferences;
    invoke-static {}, Lcom/android/settings/wifi/WifiApManageDevices;->access$700()Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v3

    .line 813
    .local v3, "whiteList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;->mDevice:Lcom/android/settings/wifi/ConnectedDevice;

    iget-object v0, v4, Lcom/android/settings/wifi/ConnectedDevice;->mMACAddress:Ljava/lang/String;

    .line 814
    .local v0, "addMac":Ljava/lang/String;
    # getter for: Lcom/android/settings/wifi/WifiApManageDevices;->mAllowedDevices:Lcom/android/settings/wifi/WifiProgressCategory;
    invoke-static {}, Lcom/android/settings/wifi/WifiApManageDevices;->access$500()Lcom/android/settings/wifi/WifiProgressCategory;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 815
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "--DIS"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 816
    iget-object v4, p0, Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;->mDevice:Lcom/android/settings/wifi/ConnectedDevice;

    iget-object v4, v4, Lcom/android/settings/wifi/ConnectedDevice;->mMACAddress:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 817
    # getter for: Lcom/android/settings/wifi/WifiApManageDevices;->mSharedPrefs:Landroid/content/SharedPreferences;
    invoke-static {}, Lcom/android/settings/wifi/WifiApManageDevices;->access$700()Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 818
    .local v2, "spedit":Landroid/content/SharedPreferences$Editor;
    iget-object v4, p0, Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;->mDevice:Lcom/android/settings/wifi/ConnectedDevice;

    iget-object v4, v4, Lcom/android/settings/wifi/ConnectedDevice;->mMACAddress:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 819
    .local v1, "devName":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;->mDevice:Lcom/android/settings/wifi/ConnectedDevice;

    iget-object v4, v4, Lcom/android/settings/wifi/ConnectedDevice;->mMACAddress:Ljava/lang/String;

    invoke-interface {v2, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 820
    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 821
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 825
    .end local v0    # "addMac":Ljava/lang/String;
    .end local v1    # "devName":Ljava/lang/String;
    .end local v2    # "spedit":Landroid/content/SharedPreferences$Editor;
    .end local v3    # "whiteList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 826
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 788
    invoke-virtual {p0}, Landroid/app/Dialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04008f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;->mView:Landroid/view/View;

    .line 789
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;->mView:Landroid/view/View;

    const v1, 0x7f08019c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;->mGroup:Landroid/view/ViewGroup;

    .line 790
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;->mView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 791
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->setInverseBackgroundForced(Z)V

    .line 792
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;->mDevice:Lcom/android/settings/wifi/ConnectedDevice;

    iget-object v0, v0, Lcom/android/settings/wifi/ConnectedDevice;->mDeviceName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 793
    const/4 v0, -0x1

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;->this$0:Lcom/android/settings/wifi/WifiApManageDevices;

    # getter for: Lcom/android/settings/wifi/WifiApManageDevices;->mRes:Landroid/content/res/Resources;
    invoke-static {v1}, Lcom/android/settings/wifi/WifiApManageDevices;->access$300(Lcom/android/settings/wifi/WifiApManageDevices;)Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0065

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 794
    const/4 v0, -0x2

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;->this$0:Lcom/android/settings/wifi/WifiApManageDevices;

    # getter for: Lcom/android/settings/wifi/WifiApManageDevices;->mRes:Landroid/content/res/Resources;
    invoke-static {v1}, Lcom/android/settings/wifi/WifiApManageDevices;->access$300(Lcom/android/settings/wifi/WifiApManageDevices;)Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0066

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 795
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;->mGroup:Landroid/view/ViewGroup;

    const v1, 0x7f0b0061

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;->mDevice:Lcom/android/settings/wifi/ConnectedDevice;

    iget-object v2, v2, Lcom/android/settings/wifi/ConnectedDevice;->mIPAddress:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)Landroid/view/View;

    .line 796
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;->mGroup:Landroid/view/ViewGroup;

    const v1, 0x7f0b0062

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;->mDevice:Lcom/android/settings/wifi/ConnectedDevice;

    iget-object v2, v2, Lcom/android/settings/wifi/ConnectedDevice;->mMACAddress:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)Landroid/view/View;

    .line 797
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;->updateFields()V

    .line 798
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 799
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 847
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;->this$0:Lcom/android/settings/wifi/WifiApManageDevices;

    # getter for: Lcom/android/settings/wifi/WifiApManageDevices;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiApManageDevices;->access$1000(Lcom/android/settings/wifi/WifiApManageDevices;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;->mUpdateTimeTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 848
    return-void
.end method

.method protected onStart()V
    .locals 4

    .prologue
    .line 803
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;->this$0:Lcom/android/settings/wifi/WifiApManageDevices;

    # getter for: Lcom/android/settings/wifi/WifiApManageDevices;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiApManageDevices;->access$1000(Lcom/android/settings/wifi/WifiApManageDevices;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;->mUpdateTimeTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 804
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;->this$0:Lcom/android/settings/wifi/WifiApManageDevices;

    # getter for: Lcom/android/settings/wifi/WifiApManageDevices;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiApManageDevices;->access$1000(Lcom/android/settings/wifi/WifiApManageDevices;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;->mUpdateTimeTask:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 805
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 806
    return-void
.end method
