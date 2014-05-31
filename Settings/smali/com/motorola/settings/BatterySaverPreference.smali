.class public Lcom/motorola/settings/BatterySaverPreference;
.super Landroid/preference/TwoStatePreference;
.source "BatterySaverPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/settings/BatterySaverPreference$1;,
        Lcom/motorola/settings/BatterySaverPreference$Listener;,
        Lcom/motorola/settings/BatterySaverPreference$OnPreferenceClickListener;
    }
.end annotation


# instance fields
.field private mClickListener:Lcom/motorola/settings/BatterySaverPreference$OnPreferenceClickListener;

.field private final mListener:Lcom/motorola/settings/BatterySaverPreference$Listener;

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/motorola/settings/BatterySaverPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 37
    invoke-direct {p0, p1, p2}, Landroid/preference/TwoStatePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    iput-object v1, p0, Lcom/motorola/settings/BatterySaverPreference;->mTitle:Landroid/widget/TextView;

    .line 29
    new-instance v0, Lcom/motorola/settings/BatterySaverPreference$Listener;

    invoke-direct {v0, p0, v1}, Lcom/motorola/settings/BatterySaverPreference$Listener;-><init>(Lcom/motorola/settings/BatterySaverPreference;Lcom/motorola/settings/BatterySaverPreference$1;)V

    iput-object v0, p0, Lcom/motorola/settings/BatterySaverPreference;->mListener:Lcom/motorola/settings/BatterySaverPreference$Listener;

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/TwoStatePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    iput-object v1, p0, Lcom/motorola/settings/BatterySaverPreference;->mTitle:Landroid/widget/TextView;

    .line 29
    new-instance v0, Lcom/motorola/settings/BatterySaverPreference$Listener;

    invoke-direct {v0, p0, v1}, Lcom/motorola/settings/BatterySaverPreference$Listener;-><init>(Lcom/motorola/settings/BatterySaverPreference;Lcom/motorola/settings/BatterySaverPreference$1;)V

    iput-object v0, p0, Lcom/motorola/settings/BatterySaverPreference;->mListener:Lcom/motorola/settings/BatterySaverPreference$Listener;

    .line 34
    return-void
.end method

.method static synthetic access$100(Lcom/motorola/settings/BatterySaverPreference;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "x0"    # Lcom/motorola/settings/BatterySaverPreference;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 26
    invoke-virtual {p0, p1}, Lcom/motorola/settings/BatterySaverPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 52
    invoke-super {p0, p1}, Landroid/preference/TwoStatePreference;->onBindView(Landroid/view/View;)V

    .line 53
    invoke-virtual {p0}, Lcom/motorola/settings/BatterySaverPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/motorola/settings/BatterySaverUtil;->getBatteryRuleIsEnabled(Landroid/content/Context;)Z

    move-result v1

    .line 55
    .local v1, "isBatteryRuleEnabled":Z
    const v2, 0x7f08001d

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/motorola/settings/BatterySaverPreference;->mTitle:Landroid/widget/TextView;

    .line 56
    iget-object v2, p0, Lcom/motorola/settings/BatterySaverPreference;->mTitle:Landroid/widget/TextView;

    const v3, 0x7f0b0019

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 58
    const v2, 0x7f08001e

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    .line 59
    .local v0, "batterySaverSwitch":Landroid/widget/Switch;
    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 60
    iget-object v2, p0, Lcom/motorola/settings/BatterySaverPreference;->mListener:Lcom/motorola/settings/BatterySaverPreference$Listener;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 61
    return-void
.end method

.method protected onClick()V
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/motorola/settings/BatterySaverPreference;->mClickListener:Lcom/motorola/settings/BatterySaverPreference$OnPreferenceClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/settings/BatterySaverPreference;->mClickListener:Lcom/motorola/settings/BatterySaverPreference$OnPreferenceClickListener;

    invoke-virtual {p0}, Lcom/motorola/settings/BatterySaverPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/motorola/settings/BatterySaverPreference$OnPreferenceClickListener;->onPreferenceClick(Ljava/lang/String;)V

    .line 66
    :cond_0
    return-void
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/motorola/settings/BatterySaverPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 47
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x7f04000f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public setOnPreferenceClickListener(Lcom/motorola/settings/BatterySaverPreference$OnPreferenceClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/motorola/settings/BatterySaverPreference$OnPreferenceClickListener;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/motorola/settings/BatterySaverPreference;->mClickListener:Lcom/motorola/settings/BatterySaverPreference$OnPreferenceClickListener;

    .line 74
    return-void
.end method
