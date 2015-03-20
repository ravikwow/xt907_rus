.class Lcom/motorola/messaging/activity/MessagingPreferenceActivity$4;
.super Ljava/lang/Object;
.source "MessagingPreferenceActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/messaging/activity/MessagingPreferenceActivity;->initRingtonePref()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/messaging/activity/MessagingPreferenceActivity;

.field final synthetic val$ringtonePreference:Landroid/preference/RingtonePreference;

.field final synthetic val$sp:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Lcom/motorola/messaging/activity/MessagingPreferenceActivity;Landroid/preference/RingtonePreference;Landroid/content/SharedPreferences;)V
    .locals 0

    .prologue
    .line 402
    iput-object p1, p0, Lcom/motorola/messaging/activity/MessagingPreferenceActivity$4;->this$0:Lcom/motorola/messaging/activity/MessagingPreferenceActivity;

    iput-object p2, p0, Lcom/motorola/messaging/activity/MessagingPreferenceActivity$4;->val$ringtonePreference:Landroid/preference/RingtonePreference;

    iput-object p3, p0, Lcom/motorola/messaging/activity/MessagingPreferenceActivity$4;->val$sp:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "uriString"    # Ljava/lang/Object;

    .prologue
    .line 406
    iget-object v1, p0, Lcom/motorola/messaging/activity/MessagingPreferenceActivity$4;->this$0:Lcom/motorola/messaging/activity/MessagingPreferenceActivity;

    iget-object v2, p0, Lcom/motorola/messaging/activity/MessagingPreferenceActivity$4;->val$ringtonePreference:Landroid/preference/RingtonePreference;

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    # invokes: Lcom/motorola/messaging/activity/MessagingPreferenceActivity;->updateRingtoneSummary(Landroid/preference/RingtonePreference;Ljava/lang/String;)V
    invoke-static {v1, v2, v0}, Lcom/motorola/messaging/activity/MessagingPreferenceActivity;->access$200(Lcom/motorola/messaging/activity/MessagingPreferenceActivity;Landroid/preference/RingtonePreference;Ljava/lang/String;)V

    .line 407
    iget-object v0, p0, Lcom/motorola/messaging/activity/MessagingPreferenceActivity$4;->val$sp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_key_ringtone"

    check-cast p2, Ljava/lang/String;

    .end local p2    # "uriString":Ljava/lang/Object;
    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 408
    const/4 v0, 0x0

    return v0
.end method
