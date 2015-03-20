.class public Lcom/motorola/messaging/settings/SummaryListPreference;
.super Landroid/preference/ListPreference;
.source "SummaryListPreference.java"


# instance fields
.field private mEntrySummaries:[Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    .line 33
    return-void
.end method

.method static synthetic access$000(Lcom/motorola/messaging/settings/SummaryListPreference;)[Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/settings/SummaryListPreference;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/motorola/messaging/settings/SummaryListPreference;->mEntrySummaries:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$100(Lcom/motorola/messaging/settings/SummaryListPreference;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/settings/SummaryListPreference;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Landroid/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/motorola/messaging/settings/SummaryListPreference;Landroid/content/DialogInterface;)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/messaging/settings/SummaryListPreference;
    .param p1, "x1"    # Landroid/content/DialogInterface;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/motorola/messaging/settings/SummaryListPreference;->performItemClick(Landroid/content/DialogInterface;)V

    return-void
.end method

.method private performItemClick(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 107
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/preference/DialogPreference;->onClick(Landroid/content/DialogInterface;I)V

    .line 108
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 109
    return-void
.end method


# virtual methods
.method protected onDialogClosed(Z)V
    .locals 1
    .param p1, "positiveResult"    # Z

    .prologue
    .line 102
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/preference/ListPreference;->onDialogClosed(Z)V

    .line 103
    return-void
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 7
    .param p1, "builder"    # Landroid/app/AlertDialog$Builder;

    .prologue
    .line 59
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    .line 62
    new-instance v0, Lcom/motorola/messaging/settings/SummaryListPreference$1;

    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f030027

    const v4, 0x7f09006f

    invoke-virtual {p0}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/motorola/messaging/settings/SummaryListPreference$1;-><init>(Lcom/motorola/messaging/settings/SummaryListPreference;Landroid/content/Context;II[Ljava/lang/CharSequence;)V

    .line 84
    .local v0, "adapter":Landroid/widget/ListAdapter;
    new-instance v6, Lcom/motorola/messaging/settings/SummaryListPreference$2;

    invoke-direct {v6, p0}, Lcom/motorola/messaging/settings/SummaryListPreference$2;-><init>(Lcom/motorola/messaging/settings/SummaryListPreference;)V

    .line 96
    .local v6, "listener":Landroid/content/DialogInterface$OnClickListener;
    invoke-virtual {p1, v0, v6}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 97
    return-void
.end method

.method public setEntrySummaries([Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "entrySummaries"    # [Ljava/lang/CharSequence;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/motorola/messaging/settings/SummaryListPreference;->mEntrySummaries:[Ljava/lang/CharSequence;

    .line 46
    return-void
.end method
