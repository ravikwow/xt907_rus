.class Lcom/motorola/messaging/settings/SummaryListPreference$2;
.super Ljava/lang/Object;
.source "SummaryListPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/messaging/settings/SummaryListPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/messaging/settings/SummaryListPreference;


# direct methods
.method constructor <init>(Lcom/motorola/messaging/settings/SummaryListPreference;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/motorola/messaging/settings/SummaryListPreference$2;->this$0:Lcom/motorola/messaging/settings/SummaryListPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 86
    iget-object v1, p0, Lcom/motorola/messaging/settings/SummaryListPreference$2;->this$0:Lcom/motorola/messaging/settings/SummaryListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    aget-object v1, v1, p2

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, "clickedValue":Ljava/lang/String;
    iget-object v1, p0, Lcom/motorola/messaging/settings/SummaryListPreference$2;->this$0:Lcom/motorola/messaging/settings/SummaryListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 88
    iget-object v1, p0, Lcom/motorola/messaging/settings/SummaryListPreference$2;->this$0:Lcom/motorola/messaging/settings/SummaryListPreference;

    # invokes: Landroid/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z
    invoke-static {v1, v0}, Lcom/motorola/messaging/settings/SummaryListPreference;->access$100(Lcom/motorola/messaging/settings/SummaryListPreference;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 89
    iget-object v1, p0, Lcom/motorola/messaging/settings/SummaryListPreference$2;->this$0:Lcom/motorola/messaging/settings/SummaryListPreference;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 92
    :cond_0
    iget-object v1, p0, Lcom/motorola/messaging/settings/SummaryListPreference$2;->this$0:Lcom/motorola/messaging/settings/SummaryListPreference;

    # invokes: Lcom/motorola/messaging/settings/SummaryListPreference;->performItemClick(Landroid/content/DialogInterface;)V
    invoke-static {v1, p1}, Lcom/motorola/messaging/settings/SummaryListPreference;->access$200(Lcom/motorola/messaging/settings/SummaryListPreference;Landroid/content/DialogInterface;)V

    .line 93
    return-void
.end method
