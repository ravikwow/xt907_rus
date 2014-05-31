.class final Lcom/motorola/settings/BatterySaverUtil$2;
.super Ljava/lang/Object;
.source "BatterySaverUtil.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/settings/BatterySaverUtil;->getBatterySaverPreference(Landroid/app/Activity;)Lcom/motorola/settings/BatterySaverPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 72
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 74
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 75
    .local v0, "isBatterySaverEnabled":Z
    # getter for: Lcom/motorola/settings/BatterySaverUtil;->mInstance:Lcom/motorola/settings/BatterySaverUtil;
    invoke-static {}, Lcom/motorola/settings/BatterySaverUtil;->access$200()Lcom/motorola/settings/BatterySaverUtil;

    move-result-object v1

    # getter for: Lcom/motorola/settings/BatterySaverUtil;->mActivity:Landroid/app/Activity;
    invoke-static {}, Lcom/motorola/settings/BatterySaverUtil;->access$000()Landroid/app/Activity;

    move-result-object v2

    # invokes: Lcom/motorola/settings/BatterySaverUtil;->changeBatteryRuleState(Landroid/content/Context;Z)V
    invoke-static {v1, v2, v0}, Lcom/motorola/settings/BatterySaverUtil;->access$300(Lcom/motorola/settings/BatterySaverUtil;Landroid/content/Context;Z)V

    .line 76
    const/4 v1, 0x1

    return v1
.end method
