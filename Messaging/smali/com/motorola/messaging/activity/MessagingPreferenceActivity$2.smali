.class Lcom/motorola/messaging/activity/MessagingPreferenceActivity$2;
.super Ljava/lang/Object;
.source "MessagingPreferenceActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/messaging/activity/MessagingPreferenceActivity;->initClearSearchHistoryPref()V
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
    .line 344
    iput-object p1, p0, Lcom/motorola/messaging/activity/MessagingPreferenceActivity$2;->this$0:Lcom/motorola/messaging/activity/MessagingPreferenceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 346
    iget-object v0, p0, Lcom/motorola/messaging/activity/MessagingPreferenceActivity$2;->this$0:Lcom/motorola/messaging/activity/MessagingPreferenceActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->showDialog(I)V

    .line 347
    const/4 v0, 0x1

    return v0
.end method
