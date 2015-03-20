.class Lcom/motorola/messaging/activity/MessagingPreferenceActivity$6;
.super Lcom/motorola/messaging/concurrent/TaskManager$SimpleAsyncTask;
.source "MessagingPreferenceActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/messaging/activity/MessagingPreferenceActivity;->updateRingtoneSummary(Landroid/preference/RingtonePreference;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mRingtoneSummary:Ljava/lang/String;

.field final synthetic this$0:Lcom/motorola/messaging/activity/MessagingPreferenceActivity;

.field final synthetic val$ringtonePreference:Landroid/preference/RingtonePreference;

.field final synthetic val$uriString:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/motorola/messaging/activity/MessagingPreferenceActivity;Landroid/os/Handler;ILjava/lang/String;Landroid/preference/RingtonePreference;)V
    .locals 1
    .param p2, "x0"    # Landroid/os/Handler;
    .param p3, "x1"    # I

    .prologue
    .line 577
    iput-object p1, p0, Lcom/motorola/messaging/activity/MessagingPreferenceActivity$6;->this$0:Lcom/motorola/messaging/activity/MessagingPreferenceActivity;

    iput-object p4, p0, Lcom/motorola/messaging/activity/MessagingPreferenceActivity$6;->val$uriString:Ljava/lang/String;

    iput-object p5, p0, Lcom/motorola/messaging/activity/MessagingPreferenceActivity$6;->val$ringtonePreference:Landroid/preference/RingtonePreference;

    invoke-direct {p0, p2, p3}, Lcom/motorola/messaging/concurrent/TaskManager$SimpleAsyncTask;-><init>(Landroid/os/Handler;I)V

    .line 578
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/messaging/activity/MessagingPreferenceActivity$6;->mRingtoneSummary:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected doInBackground()V
    .locals 3

    .prologue
    .line 582
    iget-object v1, p0, Lcom/motorola/messaging/activity/MessagingPreferenceActivity$6;->this$0:Lcom/motorola/messaging/activity/MessagingPreferenceActivity;

    iget-object v2, p0, Lcom/motorola/messaging/activity/MessagingPreferenceActivity$6;->val$uriString:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    .line 583
    .local v0, "ringtone":Landroid/media/Ringtone;
    if-eqz v0, :cond_0

    .line 584
    iget-object v1, p0, Lcom/motorola/messaging/activity/MessagingPreferenceActivity$6;->this$0:Lcom/motorola/messaging/activity/MessagingPreferenceActivity;

    invoke-virtual {v0, v1}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/messaging/activity/MessagingPreferenceActivity$6;->mRingtoneSummary:Ljava/lang/String;

    .line 592
    :goto_0
    return-void

    .line 585
    :cond_0
    const-string v1, "content://settings/system/notification_sound"

    iget-object v2, p0, Lcom/motorola/messaging/activity/MessagingPreferenceActivity$6;->val$uriString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 588
    iget-object v1, p0, Lcom/motorola/messaging/activity/MessagingPreferenceActivity$6;->this$0:Lcom/motorola/messaging/activity/MessagingPreferenceActivity;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b008b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/messaging/activity/MessagingPreferenceActivity$6;->mRingtoneSummary:Ljava/lang/String;

    goto :goto_0

    .line 590
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/messaging/activity/MessagingPreferenceActivity$6;->mRingtoneSummary:Ljava/lang/String;

    goto :goto_0
.end method

.method protected onPostExecute()V
    .locals 2

    .prologue
    .line 596
    iget-object v0, p0, Lcom/motorola/messaging/activity/MessagingPreferenceActivity$6;->mRingtoneSummary:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 597
    iget-object v0, p0, Lcom/motorola/messaging/activity/MessagingPreferenceActivity$6;->val$ringtonePreference:Landroid/preference/RingtonePreference;

    iget-object v1, p0, Lcom/motorola/messaging/activity/MessagingPreferenceActivity$6;->mRingtoneSummary:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 599
    :cond_0
    return-void
.end method
