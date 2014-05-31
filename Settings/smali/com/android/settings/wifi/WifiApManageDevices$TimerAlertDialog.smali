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
    .line 781
    iput-object p1, p0, Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;->this$0:Lcom/android/settings/wifi/WifiApManageDevices;

    .line 782
    invoke-direct {p0, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 774
    new-instance v0, Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog$1;-><init>(Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;->mUpdateTimeTask:Ljava/lang/Runnable;

    .line 783
    iput-object p3, p0, Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;->mDevice:Lcom/android/settings/wifi/ConnectedDevice;

    .line 784
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;->mDuration:Landroid/text/format/Time;

    .line 785
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;->mDuration:Landroid/text/format/Time;

    const-string v1, "GMT"

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    .line 786
    return-void
.end method

.method static synthetic access$1200(Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;

    .prologue
    .line 767
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;->updateFields()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;)Lcom/android/settings/wifi/ConnectedDevice;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;

    .prologue
    .line 767
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;->mDevice:Lcom/android/settings/wifi/ConnectedDevice;

    return-object v0
.end method

.method private addRow(Landroid/view/ViewGroup;ILjava/lang/String;)Landroid/view/View;
    .locals 4
    .param p1, "group"    # Landroid/view/ViewGroup;
    .param p2, "name"    # I
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 841
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0400b4

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 842
    .local v0, "row":Landroid/view/View;
    const v1, 0x7f080080

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 843
    const v1, 0x7f0800e2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 844
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 845
    return-object v0
.end method

.method private updateFields()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 831
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 832
    .local v0, "now":Landroid/text/format/Time;
    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 833
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;->mDuration:Landroid/text/format/Time;

    invoke-virtual {v0, v5}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;->mDevice:Lcom/android/settings/wifi/ConnectedDevice;

    iget-object v4, v4, Lcom/android/settings/wifi/ConnectedDevice;->mConnectTime:Landroid/text/format/Time;

    invoke-virtual {v4, v5}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Landroid/text/format/Time;->set(J)V

    .line 834
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;->mTimeView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 835
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;->mGroup:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;->mTimeView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 837
    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;->mGroup:Landroid/view/ViewGroup;

    const v2, 0x7f0b008b

    iget-object v3, p0, Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;->mDuration:Landroid/text/format/Time;

    const-string v4, "%H:%M:%S"

    invoke-virtual {v3, v4}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;->mTimeView:Landroid/view/View;

    .line 838
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 811
    const/4 v4, -0x2

    if-ne p2, v4, :cond_0

    .line 812
    iget-object v4, p0, Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;->this$0:Lcom/android/settings/wifi/WifiApManageDevices;

    iget-object v5, p0, Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;->mDevice:Lcom/android/settings/wifi/ConnectedDevice;

    iget-object v5, v5, Lcom/android/settings/wifi/ConnectedDevice;->mMACAddress:Ljava/lang/String;

    # invokes: Lcom/android/settings/wifi/WifiApManageDevices;->invokeServiceToUnBlackList(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/settings/wifi/WifiApManageDevices;->access$400(Lcom/android/settings/wifi/WifiApManageDevices;Ljava/lang/String;)V

    .line 813
    # getter for: Lcom/android/settings/wifi/WifiApManageDevices;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/settings/wifi/WifiApManageDevices;->access$1100()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/wifi/WifiApManageDevices;->isWhiteListAllEnabled(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 814
    # getter for: Lcom/android/settings/wifi/WifiApManageDevices;->mSharedPrefs:Landroid/content/SharedPreferences;
    invoke-static {}, Lcom/android/settings/wifi/WifiApManageDevices;->access$700()Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v3

    .line 815
    .local v3, "whiteList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;->mDevice:Lcom/android/settings/wifi/ConnectedDevice;

    iget-object v0, v4, Lcom/android/settings/wifi/ConnectedDevice;->mMACAddress:Ljava/lang/String;

    .line 816
    .local v0, "addMac":Ljava/lang/String;
    # getter for: Lcom/android/settings/wifi/WifiApManageDevices;->mAllowedDevices:Lcom/android/settings/wifi/WifiProgressCategory;
    invoke-static {}, Lcom/android/settings/wifi/WifiApManageDevices;->access$500()Lcom/android/settings/wifi/WifiProgressCategory;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/android/settings/wifi/WifiProgressCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 817
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "--DIS"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 818
    iget-object v4, p0, Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;->mDevice:Lcom/android/settings/wifi/ConnectedDevice;

    iget-object v4, v4, Lcom/android/settings/wifi/ConnectedDevice;->mMACAddress:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 819
    # getter for: Lcom/android/settings/wifi/WifiApManageDevices;->mSharedPrefs:Landroid/content/SharedPreferences;
    invoke-static {}, Lcom/android/settings/wifi/WifiApManageDevices;->access$700()Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 820
    .local v2, "spedit":Landroid/content/SharedPreferences$Editor;
    iget-object v4, p0, Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;->mDevice:Lcom/android/settings/wifi/ConnectedDevice;

    iget-object v4, v4, Lcom/android/settings/wifi/ConnectedDevice;->mMACAddress:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 821
    .local v1, "devName":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;->mDevice:Lcom/android/settings/wifi/ConnectedDevice;

    iget-object v4, v4, Lcom/android/settings/wifi/ConnectedDevice;->mMACAddress:Ljava/lang/String;

    invoke-interface {v2, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 822
    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 823
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 827
    .end local v0    # "addMac":Ljava/lang/String;
    .end local v1    # "devName":Ljava/lang/String;
    .end local v2    # "spedit":Landroid/content/SharedPreferences$Editor;
    .end local v3    # "whiteList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;->dismiss()V

    .line 828
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 790
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0400ae

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;->mView:Landroid/view/View;

    .line 791
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;->mView:Landroid/view/View;

    const v1, 0x7f0801d1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;->mGroup:Landroid/view/ViewGroup;

    .line 792
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;->mView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;->setView(Landroid/view/View;)V

    .line 793
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;->setInverseBackgroundForced(Z)V

    .line 794
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;->mDevice:Lcom/android/settings/wifi/ConnectedDevice;

    iget-object v0, v0, Lcom/android/settings/wifi/ConnectedDevice;->mDeviceName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 795
    const/4 v0, -0x1

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;->this$0:Lcom/android/settings/wifi/WifiApManageDevices;

    # getter for: Lcom/android/settings/wifi/WifiApManageDevices;->mRes:Landroid/content/res/Resources;
    invoke-static {v1}, Lcom/android/settings/wifi/WifiApManageDevices;->access$300(Lcom/android/settings/wifi/WifiApManageDevices;)Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0018

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p0}, Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 796
    const/4 v0, -0x2

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;->this$0:Lcom/android/settings/wifi/WifiApManageDevices;

    # getter for: Lcom/android/settings/wifi/WifiApManageDevices;->mRes:Landroid/content/res/Resources;
    invoke-static {v1}, Lcom/android/settings/wifi/WifiApManageDevices;->access$300(Lcom/android/settings/wifi/WifiApManageDevices;)Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b008c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p0}, Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 797
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;->mGroup:Landroid/view/ViewGroup;

    const v1, 0x7f0b0088

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;->mDevice:Lcom/android/settings/wifi/ConnectedDevice;

    iget-object v2, v2, Lcom/android/settings/wifi/ConnectedDevice;->mIPAddress:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)Landroid/view/View;

    .line 798
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;->mGroup:Landroid/view/ViewGroup;

    const v1, 0x7f0b0089

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;->mDevice:Lcom/android/settings/wifi/ConnectedDevice;

    iget-object v2, v2, Lcom/android/settings/wifi/ConnectedDevice;->mMACAddress:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)Landroid/view/View;

    .line 799
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;->updateFields()V

    .line 800
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 801
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 849
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;->this$0:Lcom/android/settings/wifi/WifiApManageDevices;

    # getter for: Lcom/android/settings/wifi/WifiApManageDevices;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiApManageDevices;->access$1000(Lcom/android/settings/wifi/WifiApManageDevices;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;->mUpdateTimeTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 850
    return-void
.end method

.method protected onStart()V
    .locals 4

    .prologue
    .line 805
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;->this$0:Lcom/android/settings/wifi/WifiApManageDevices;

    # getter for: Lcom/android/settings/wifi/WifiApManageDevices;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiApManageDevices;->access$1000(Lcom/android/settings/wifi/WifiApManageDevices;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;->mUpdateTimeTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 806
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;->this$0:Lcom/android/settings/wifi/WifiApManageDevices;

    # getter for: Lcom/android/settings/wifi/WifiApManageDevices;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiApManageDevices;->access$1000(Lcom/android/settings/wifi/WifiApManageDevices;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;->mUpdateTimeTask:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 807
    invoke-super {p0}, Landroid/app/AlertDialog;->onStart()V

    .line 808
    return-void
.end method
