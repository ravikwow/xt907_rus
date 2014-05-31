.class public Lcom/motorola/settings/VzwAirplaneModeEnabler;
.super Lcom/android/settings/AirplaneModeEnabler;
.source "VzwAirplaneModeEnabler.java"


# instance fields
.field private final mCheckBoxPref:Landroid/preference/CheckBoxPreference;

.field private final mContext:Landroid/content/Context;

.field private mDependents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private final mRoot:Landroid/preference/PreferenceScreen;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/preference/CheckBoxPreference;Landroid/preference/PreferenceScreen;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "airplaneModeCheckBoxPreference"    # Landroid/preference/CheckBoxPreference;
    .param p3, "root"    # Landroid/preference/PreferenceScreen;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/android/settings/AirplaneModeEnabler;-><init>(Landroid/content/Context;Landroid/preference/CheckBoxPreference;)V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/settings/VzwAirplaneModeEnabler;->mDependents:Ljava/util/List;

    .line 33
    iput-object p1, p0, Lcom/motorola/settings/VzwAirplaneModeEnabler;->mContext:Landroid/content/Context;

    .line 34
    iput-object p2, p0, Lcom/motorola/settings/VzwAirplaneModeEnabler;->mCheckBoxPref:Landroid/preference/CheckBoxPreference;

    .line 35
    iput-object p3, p0, Lcom/motorola/settings/VzwAirplaneModeEnabler;->mRoot:Landroid/preference/PreferenceScreen;

    .line 36
    return-void
.end method

.method private notifyDependencyChange(Z)V
    .locals 4
    .param p1, "disableDependents"    # Z

    .prologue
    .line 93
    iget-object v0, p0, Lcom/motorola/settings/VzwAirplaneModeEnabler;->mDependents:Ljava/util/List;

    .line 95
    .local v0, "dependents":Ljava/util/List;, "Ljava/util/List<Landroid/preference/Preference;>;"
    if-nez v0, :cond_1

    .line 103
    :cond_0
    return-void

    .line 99
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 100
    .local v1, "dependentsCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 101
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/Preference;

    invoke-virtual {v3, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 100
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private updateDependents()V
    .locals 5

    .prologue
    .line 67
    iget-object v4, p0, Lcom/motorola/settings/VzwAirplaneModeEnabler;->mRoot:Landroid/preference/PreferenceScreen;

    invoke-virtual {v4}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v0

    .line 69
    .local v0, "count":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/motorola/settings/VzwAirplaneModeEnabler;->mDependents:Ljava/util/List;

    .line 72
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 73
    iget-object v4, p0, Lcom/motorola/settings/VzwAirplaneModeEnabler;->mRoot:Landroid/preference/PreferenceScreen;

    invoke-virtual {v4, v2}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v3

    .line 74
    .local v3, "preference":Landroid/preference/Preference;
    if-eqz v3, :cond_0

    .line 75
    invoke-virtual {v3}, Landroid/preference/Preference;->getDependency()Ljava/lang/String;

    move-result-object v1

    .line 76
    .local v1, "dependencyKey":Ljava/lang/String;
    const-string v4, "toggle_airplane"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 77
    iget-object v4, p0, Lcom/motorola/settings/VzwAirplaneModeEnabler;->mDependents:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    .line 72
    .end local v1    # "dependencyKey":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 84
    .end local v3    # "preference":Landroid/preference/Preference;
    :cond_1
    return-void
.end method


# virtual methods
.method protected onAirplaneModeChanged()V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/motorola/settings/VzwAirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/motorola/settings/VzwAirplaneModeEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/motorola/settings/VzwAirplaneModeEnabler;->notifyDependencyChange(Z)V

    .line 56
    return-void

    .line 55
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 40
    invoke-super {p0}, Lcom/android/settings/AirplaneModeEnabler;->resume()V

    .line 44
    iget-object v0, p0, Lcom/motorola/settings/VzwAirplaneModeEnabler;->mDependents:Ljava/util/List;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/motorola/settings/VzwAirplaneModeEnabler;->mRoot:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    .line 45
    invoke-direct {p0}, Lcom/motorola/settings/VzwAirplaneModeEnabler;->updateDependents()V

    .line 47
    iget-object v0, p0, Lcom/motorola/settings/VzwAirplaneModeEnabler;->mCheckBoxPref:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/motorola/settings/VzwAirplaneModeEnabler;->mRoot:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/motorola/settings/VzwAirplaneModeEnabler;->mCheckBoxPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 51
    :cond_0
    return-void
.end method
