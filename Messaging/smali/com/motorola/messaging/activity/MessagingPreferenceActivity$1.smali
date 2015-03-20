.class Lcom/motorola/messaging/activity/MessagingPreferenceActivity$1;
.super Ljava/lang/Object;
.source "MessagingPreferenceActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/messaging/activity/MessagingPreferenceActivity;->initVibrationPref()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/messaging/activity/MessagingPreferenceActivity;


# direct methods
.method constructor <init>(Lcom/motorola/messaging/activity/MessagingPreferenceActivity;)V
    .locals 0

    .prologue
    .line 321
    iput-object p1, p0, Lcom/motorola/messaging/activity/MessagingPreferenceActivity$1;->this$0:Lcom/motorola/messaging/activity/MessagingPreferenceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "pref"    # Landroid/preference/Preference;
    .param p2, "val"    # Ljava/lang/Object;

    .prologue
    .line 325
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 327
    .local v0, "value":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 328
    iget-object v1, p0, Lcom/motorola/messaging/activity/MessagingPreferenceActivity$1;->this$0:Lcom/motorola/messaging/activity/MessagingPreferenceActivity;

    # getter for: Lcom/motorola/messaging/activity/MessagingPreferenceActivity;->mVibrator:Landroid/os/Vibrator;
    invoke-static {v1}, Lcom/motorola/messaging/activity/MessagingPreferenceActivity;->access$000(Lcom/motorola/messaging/activity/MessagingPreferenceActivity;)Landroid/os/Vibrator;

    move-result-object v1

    if-nez v1, :cond_0

    .line 329
    iget-object v2, p0, Lcom/motorola/messaging/activity/MessagingPreferenceActivity$1;->this$0:Lcom/motorola/messaging/activity/MessagingPreferenceActivity;

    iget-object v1, p0, Lcom/motorola/messaging/activity/MessagingPreferenceActivity$1;->this$0:Lcom/motorola/messaging/activity/MessagingPreferenceActivity;

    const-string v3, "vibrator"

    invoke-virtual {v1, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    # setter for: Lcom/motorola/messaging/activity/MessagingPreferenceActivity;->mVibrator:Landroid/os/Vibrator;
    invoke-static {v2, v1}, Lcom/motorola/messaging/activity/MessagingPreferenceActivity;->access$002(Lcom/motorola/messaging/activity/MessagingPreferenceActivity;Landroid/os/Vibrator;)Landroid/os/Vibrator;

    .line 331
    :cond_0
    iget-object v1, p0, Lcom/motorola/messaging/activity/MessagingPreferenceActivity$1;->this$0:Lcom/motorola/messaging/activity/MessagingPreferenceActivity;

    # getter for: Lcom/motorola/messaging/activity/MessagingPreferenceActivity;->mVibrator:Landroid/os/Vibrator;
    invoke-static {v1}, Lcom/motorola/messaging/activity/MessagingPreferenceActivity;->access$000(Lcom/motorola/messaging/activity/MessagingPreferenceActivity;)Landroid/os/Vibrator;

    move-result-object v1

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 334
    :cond_1
    const/4 v1, 0x1

    return v1
.end method
