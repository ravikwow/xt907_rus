.class Lcom/motorola/settings/deviceinfo/BuaMemoryPreference$3;
.super Landroid/os/Handler;
.source "BuaMemoryPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;


# direct methods
.method constructor <init>(Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference$3;->this$0:Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 125
    const-string v4, "BuaMemoryPreference"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleMessage: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget v4, p1, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_0

    .line 176
    :goto_0
    return-void

    .line 128
    :sswitch_0
    iget-object v4, p0, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference$3;->this$0:Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;

    const/4 v5, 0x7

    # invokes: Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;->sendBuaRequest(ILjava/lang/Object;)V
    invoke-static {v4, v5, v7}, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;->access$100(Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;ILjava/lang/Object;)V

    .line 129
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "total_space"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 130
    .local v2, "totalSpace":Ljava/lang/String;
    iget-object v4, p0, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference$3;->this$0:Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;

    # getter for: Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;->mBuaTotalStoragePre:Landroid/preference/Preference;
    invoke-static {v4}, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;->access$300(Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 131
    iget-object v4, p0, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference$3;->this$0:Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;

    # getter for: Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;->mBuaUsageBarPreference:Lcom/android/settings/deviceinfo/UsageBarPreference;
    invoke-static {v4}, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;->access$400(Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;)Lcom/android/settings/deviceinfo/UsageBarPreference;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/settings/deviceinfo/UsageBarPreference;->clear()V

    .line 132
    iget-object v4, p0, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference$3;->this$0:Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;

    iget-object v5, p0, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference$3;->this$0:Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;

    # getter for: Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;->mBuaUsageBarPreference:Lcom/android/settings/deviceinfo/UsageBarPreference;
    invoke-static {v5}, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;->access$400(Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;)Lcom/android/settings/deviceinfo/UsageBarPreference;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 133
    iget-object v4, p0, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference$3;->this$0:Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;

    iget-object v5, p0, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference$3;->this$0:Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;

    # getter for: Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;->mBuaTotalStoragePre:Landroid/preference/Preference;
    invoke-static {v5}, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;->access$300(Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;)Landroid/preference/Preference;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 136
    .end local v2    # "totalSpace":Ljava/lang/String;
    :sswitch_1
    iget-object v4, p0, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference$3;->this$0:Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;

    iget-object v5, p0, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference$3;->this$0:Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;

    # getter for: Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;->mBuaFreeStoragePre:Lcom/motorola/settings/deviceinfo/BuaMemoryPreference$ButtonPreference;
    invoke-static {v5}, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;->access$500(Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;)Lcom/motorola/settings/deviceinfo/BuaMemoryPreference$ButtonPreference;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 137
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "available_space"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 138
    .local v0, "freeSpace":Ljava/lang/String;
    iget-object v4, p0, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference$3;->this$0:Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "percentage"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v5

    # setter for: Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;->mBuaAvailablePercentage:F
    invoke-static {v4, v5}, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;->access$602(Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;F)F

    .line 139
    iget-object v4, p0, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference$3;->this$0:Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;

    # getter for: Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;->mBuaFreeStoragePre:Lcom/motorola/settings/deviceinfo/BuaMemoryPreference$ButtonPreference;
    invoke-static {v4}, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;->access$500(Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;)Lcom/motorola/settings/deviceinfo/BuaMemoryPreference$ButtonPreference;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 140
    iget-object v4, p0, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference$3;->this$0:Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;

    # getter for: Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;->mBuaUsageBarPreference:Lcom/android/settings/deviceinfo/UsageBarPreference;
    invoke-static {v4}, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;->access$400(Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;)Lcom/android/settings/deviceinfo/UsageBarPreference;

    move-result-object v4

    const/high16 v5, 0x3f800000

    iget-object v6, p0, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference$3;->this$0:Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;

    # getter for: Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;->mBuaAvailablePercentage:F
    invoke-static {v6}, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;->access$600(Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;)F

    move-result v6

    sub-float/2addr v5, v6

    const v6, -0x777778

    invoke-virtual {v4, v5, v6}, Lcom/android/settings/deviceinfo/UsageBarPreference;->addEntry(FI)V

    .line 141
    iget-object v4, p0, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference$3;->this$0:Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;

    # getter for: Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;->mBuaUsageBarPreference:Lcom/android/settings/deviceinfo/UsageBarPreference;
    invoke-static {v4}, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;->access$400(Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;)Lcom/android/settings/deviceinfo/UsageBarPreference;

    move-result-object v4

    iget-object v5, p0, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference$3;->this$0:Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;

    # getter for: Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;->mBuaAvailablePercentage:F
    invoke-static {v5}, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;->access$600(Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;)F

    move-result v5

    iget-object v6, p0, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference$3;->this$0:Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;

    # getter for: Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;->access$700(Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0003

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/android/settings/deviceinfo/UsageBarPreference;->addEntry(FI)V

    .line 142
    iget-object v4, p0, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference$3;->this$0:Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;

    # getter for: Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;->mBuaUsageBarPreference:Lcom/android/settings/deviceinfo/UsageBarPreference;
    invoke-static {v4}, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;->access$400(Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;)Lcom/android/settings/deviceinfo/UsageBarPreference;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/settings/deviceinfo/UsageBarPreference;->commit()V

    .line 143
    iget-object v4, p0, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference$3;->this$0:Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;

    # getter for: Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;->mBuaFreeStoragePre:Lcom/motorola/settings/deviceinfo/BuaMemoryPreference$ButtonPreference;
    invoke-static {v4}, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;->access$500(Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;)Lcom/motorola/settings/deviceinfo/BuaMemoryPreference$ButtonPreference;

    move-result-object v4

    invoke-virtual {v4}, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference$ButtonPreference;->getButton()Landroid/widget/Button;

    move-result-object v3

    .line 144
    .local v3, "upgradeButton":Landroid/widget/Button;
    if-eqz v3, :cond_0

    .line 145
    iget-object v4, p0, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference$3;->this$0:Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;

    # getter for: Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;->mBuaAvailablePercentage:F
    invoke-static {v4}, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;->access$600(Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;)F

    move-result v4

    const v5, 0x3e4ccccd

    invoke-static {v4, v5}, Ljava/lang/Float;->compare(FF)I

    move-result v4

    if-gtz v4, :cond_2

    .line 146
    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 151
    :cond_0
    :goto_1
    iget-object v4, p0, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference$3;->this$0:Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;

    # getter for: Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;->mBuaCallBackHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;->access$900(Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference$3;->this$0:Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;

    # getter for: Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;->mUpdateSpaceTask:Ljava/lang/Runnable;
    invoke-static {v5}, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;->access$800(Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;)Ljava/lang/Runnable;

    move-result-object v5

    const-wide/32 v6, 0xea60

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 154
    iget-object v4, p0, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference$3;->this$0:Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;

    # getter for: Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;->mBuaAvailablePercentage:F
    invoke-static {v4}, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;->access$600(Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;)F

    move-result v4

    const v5, 0x3ecccccd

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_1

    iget-object v4, p0, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference$3;->this$0:Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;

    # getter for: Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;->mCheckStorageOnce:Z
    invoke-static {v4}, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;->access$1000(Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 155
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.motorola.intent.action.UPLOAD_COMPLETE"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 156
    .local v1, "launchIntent":Landroid/content/Intent;
    const-string v4, "notify_during_storage"

    iget-object v5, p0, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference$3;->this$0:Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;

    # getter for: Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;->mBuaAvailablePercentage:F
    invoke-static {v5}, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;->access$600(Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;)F

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 157
    iget-object v4, p0, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference$3;->this$0:Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;

    # getter for: Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;->access$700(Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 159
    .end local v1    # "launchIntent":Landroid/content/Intent;
    :cond_1
    iget-object v4, p0, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference$3;->this$0:Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;

    # setter for: Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;->mCheckStorageOnce:Z
    invoke-static {v4, v8}, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;->access$1002(Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;Z)Z

    goto/16 :goto_0

    .line 148
    :cond_2
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 164
    .end local v0    # "freeSpace":Ljava/lang/String;
    .end local v3    # "upgradeButton":Landroid/widget/Button;
    :sswitch_2
    iget-object v4, p0, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference$3;->this$0:Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;

    invoke-virtual {v4}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 165
    iget-object v4, p0, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference$3;->this$0:Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;

    iget-object v5, p0, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference$3;->this$0:Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;

    # getter for: Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;->mBuaErrorPre:Landroid/preference/Preference;
    invoke-static {v5}, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;->access$1100(Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;)Landroid/preference/Preference;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto/16 :goto_0

    .line 168
    :sswitch_3
    iget-object v4, p0, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference$3;->this$0:Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;

    invoke-virtual {v4}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 169
    iget-object v4, p0, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference$3;->this$0:Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;

    iget-object v5, p0, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference$3;->this$0:Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;

    # getter for: Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;->mBuaSubscriblePre:Lcom/motorola/settings/deviceinfo/BuaMemoryPreference$ButtonPreference;
    invoke-static {v5}, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;->access$1200(Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;)Lcom/motorola/settings/deviceinfo/BuaMemoryPreference$ButtonPreference;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto/16 :goto_0

    .line 173
    :sswitch_4
    iget-object v4, p0, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference$3;->this$0:Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;

    const/4 v5, 0x6

    # invokes: Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;->sendBuaRequest(ILjava/lang/Object;)V
    invoke-static {v4, v5, v7}, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;->access$100(Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 126
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_4
        0x6 -> :sswitch_0
        0x7 -> :sswitch_1
        0x64 -> :sswitch_2
        0x65 -> :sswitch_2
        0x66 -> :sswitch_2
        0x67 -> :sswitch_3
        0x69 -> :sswitch_4
    .end sparse-switch
.end method
