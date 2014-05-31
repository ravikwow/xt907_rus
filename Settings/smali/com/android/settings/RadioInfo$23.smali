.class Lcom/android/settings/RadioInfo$23;
.super Ljava/lang/Object;
.source "RadioInfo.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/RadioInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/RadioInfo;


# direct methods
.method constructor <init>(Lcom/android/settings/RadioInfo;)V
    .locals 0

    .prologue
    .line 1152
    iput-object p1, p0, Lcom/android/settings/RadioInfo$23;->this$0:Lcom/android/settings/RadioInfo;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p1, "parent"    # Landroid/widget/AdapterView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "pos"    # I
    .param p4, "id"    # J

    .prologue
    .line 1154
    iget-object v1, p0, Lcom/android/settings/RadioInfo$23;->this$0:Lcom/android/settings/RadioInfo;

    # getter for: Lcom/android/settings/RadioInfo;->mSpinnerShown:Z
    invoke-static {v1}, Lcom/android/settings/RadioInfo;->access$4700(Lcom/android/settings/RadioInfo;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1155
    iget-object v1, p0, Lcom/android/settings/RadioInfo$23;->this$0:Lcom/android/settings/RadioInfo;

    # getter for: Lcom/android/settings/RadioInfo;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/settings/RadioInfo;->access$4500(Lcom/android/settings/RadioInfo;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x3e9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1156
    .local v0, "msg":Landroid/os/Message;
    if-ltz p3, :cond_0

    iget-object v1, p0, Lcom/android/settings/RadioInfo$23;->this$0:Lcom/android/settings/RadioInfo;

    # getter for: Lcom/android/settings/RadioInfo;->mPreferredNetworkLabels:[Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings/RadioInfo;->access$1600(Lcom/android/settings/RadioInfo;)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, -0x2

    if-gt p3, v1, :cond_0

    .line 1157
    iget-object v1, p0, Lcom/android/settings/RadioInfo$23;->this$0:Lcom/android/settings/RadioInfo;

    # getter for: Lcom/android/settings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;
    invoke-static {v1}, Lcom/android/settings/RadioInfo;->access$1800(Lcom/android/settings/RadioInfo;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1, p3, v0}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 1162
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    :goto_0
    return-void

    .line 1160
    :cond_1
    iget-object v1, p0, Lcom/android/settings/RadioInfo$23;->this$0:Lcom/android/settings/RadioInfo;

    const/4 v2, 0x1

    # setter for: Lcom/android/settings/RadioInfo;->mSpinnerShown:Z
    invoke-static {v1, v2}, Lcom/android/settings/RadioInfo;->access$4702(Lcom/android/settings/RadioInfo;Z)Z

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .param p1, "parent"    # Landroid/widget/AdapterView;

    .prologue
    .line 1165
    return-void
.end method
