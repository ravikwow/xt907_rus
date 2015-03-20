.class Lcom/motorola/messaging/activity/MessagingPreferenceActivity$5;
.super Ljava/lang/Object;
.source "MessagingPreferenceActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/messaging/activity/MessagingPreferenceActivity;->initEncodingPref()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/messaging/activity/MessagingPreferenceActivity;

.field final synthetic val$encodingPref:Lcom/motorola/messaging/settings/SummaryListPreference;


# direct methods
.method constructor <init>(Lcom/motorola/messaging/activity/MessagingPreferenceActivity;Lcom/motorola/messaging/settings/SummaryListPreference;)V
    .locals 0

    .prologue
    .line 512
    iput-object p1, p0, Lcom/motorola/messaging/activity/MessagingPreferenceActivity$5;->this$0:Lcom/motorola/messaging/activity/MessagingPreferenceActivity;

    iput-object p2, p0, Lcom/motorola/messaging/activity/MessagingPreferenceActivity$5;->val$encodingPref:Lcom/motorola/messaging/settings/SummaryListPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 515
    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 516
    .local v0, "value":I
    invoke-static {v0}, Lcom/motorola/messaging/settings/MessageSettings;->setEncodingMethod(I)V

    .line 517
    iget-object v1, p0, Lcom/motorola/messaging/activity/MessagingPreferenceActivity$5;->val$encodingPref:Lcom/motorola/messaging/settings/SummaryListPreference;

    iget-object v2, p0, Lcom/motorola/messaging/activity/MessagingPreferenceActivity$5;->this$0:Lcom/motorola/messaging/activity/MessagingPreferenceActivity;

    # invokes: Lcom/motorola/messaging/activity/MessagingPreferenceActivity;->getEncodingString(I)Ljava/lang/String;
    invoke-static {v2, v0}, Lcom/motorola/messaging/activity/MessagingPreferenceActivity;->access$300(Lcom/motorola/messaging/activity/MessagingPreferenceActivity;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 518
    const/4 v1, 0x1

    return v1
.end method
