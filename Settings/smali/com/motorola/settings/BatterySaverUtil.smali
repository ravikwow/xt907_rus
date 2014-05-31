.class public Lcom/motorola/settings/BatterySaverUtil;
.super Ljava/lang/Object;
.source "BatterySaverUtil.java"


# static fields
.field private static CONTENT_URI:Landroid/net/Uri;

.field private static mActivity:Landroid/app/Activity;

.field private static mBatterySaver:Lcom/motorola/settings/BatterySaverPreference;

.field private static mBatterySaverDialog:Landroid/app/AlertDialog;

.field private static mInstance:Lcom/motorola/settings/BatterySaverUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 28
    sput-object v0, Lcom/motorola/settings/BatterySaverUtil;->mActivity:Landroid/app/Activity;

    .line 29
    sput-object v0, Lcom/motorola/settings/BatterySaverUtil;->mBatterySaverDialog:Landroid/app/AlertDialog;

    .line 30
    new-instance v0, Lcom/motorola/settings/BatterySaverUtil;

    invoke-direct {v0}, Lcom/motorola/settings/BatterySaverUtil;-><init>()V

    sput-object v0, Lcom/motorola/settings/BatterySaverUtil;->mInstance:Lcom/motorola/settings/BatterySaverUtil;

    .line 42
    const-string v0, "content://com.motorola.contextual.smartrules2/Rule/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/motorola/settings/BatterySaverUtil;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 44
    return-void
.end method

.method static synthetic access$000()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/motorola/settings/BatterySaverUtil;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$100()Landroid/app/AlertDialog;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/motorola/settings/BatterySaverUtil;->mBatterySaverDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$102(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Landroid/app/AlertDialog;

    .prologue
    .line 26
    sput-object p0, Lcom/motorola/settings/BatterySaverUtil;->mBatterySaverDialog:Landroid/app/AlertDialog;

    return-object p0
.end method

.method static synthetic access$200()Lcom/motorola/settings/BatterySaverUtil;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/motorola/settings/BatterySaverUtil;->mInstance:Lcom/motorola/settings/BatterySaverUtil;

    return-object v0
.end method

.method static synthetic access$300(Lcom/motorola/settings/BatterySaverUtil;Landroid/content/Context;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/settings/BatterySaverUtil;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Z

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/motorola/settings/BatterySaverUtil;->changeBatteryRuleState(Landroid/content/Context;Z)V

    return-void
.end method

.method private changeBatteryRuleState(Landroid/content/Context;Z)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "enable"    # Z

    .prologue
    const/4 v3, 0x1

    .line 124
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.motorola.contextual.smartrules.rulestate"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 126
    .local v0, "changeActionStateRequest":Landroid/content/Intent;
    const-string v1, "com.motorola.contextual.smartrules.changedrule"

    const-string v2, "com.motorola.smartactions.low_battery.action.1"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 128
    if-eqz p2, :cond_0

    .line 130
    const-string v1, "com.motorola.contextual.smartrules2.enablerule"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 137
    :goto_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 138
    return-void

    .line 134
    :cond_0
    const-string v1, "com.motorola.contextual.smartrules2.disablerule"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0
.end method

.method public static dismissDialogsIfAny()V
    .locals 1

    .prologue
    .line 142
    sget-object v0, Lcom/motorola/settings/BatterySaverUtil;->mBatterySaverDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 144
    sget-object v0, Lcom/motorola/settings/BatterySaverUtil;->mBatterySaverDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 145
    :cond_0
    return-void
.end method

.method public static getBatteryRuleIsEnabled(Landroid/content/Context;)Z
    .locals 11
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 84
    const/4 v8, 0x0

    .line 87
    .local v8, "mBatteryRuleIsEnabled":Z
    new-array v2, v1, [Ljava/lang/String;

    const-string v0, "Ena"

    aput-object v0, v2, v5

    .line 90
    .local v2, "resultColumns":[Ljava/lang/String;
    const-string v0, "%s=?"

    new-array v1, v1, [Ljava/lang/Object;

    const-string v4, "Key"

    aput-object v4, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 95
    .local v3, "whereClause":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/motorola/settings/BatterySaverUtil;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v10, "com.motorola.smartactions.low_battery.action.1"

    aput-object v10, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 98
    .local v9, "resultCursor":Landroid/database/Cursor;
    if-eqz v9, :cond_1

    .line 100
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 103
    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 108
    .local v6, "RULE_ENABLED_INDEX":I
    :cond_0
    invoke-interface {v9, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 110
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 112
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    .end local v6    # "RULE_ENABLED_INDEX":I
    .end local v9    # "resultCursor":Landroid/database/Cursor;
    :cond_1
    :goto_0
    return v8

    .line 115
    :catch_0
    move-exception v7

    .line 117
    .local v7, "e":Ljava/lang/Exception;
    const-string v0, "BatterySaverUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cursor error: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getBatterySaverPreference(Landroid/app/Activity;)Lcom/motorola/settings/BatterySaverPreference;
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 47
    sput-object p0, Lcom/motorola/settings/BatterySaverUtil;->mActivity:Landroid/app/Activity;

    .line 48
    new-instance v0, Lcom/motorola/settings/BatterySaverPreference;

    sget-object v1, Lcom/motorola/settings/BatterySaverUtil;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/motorola/settings/BatterySaverPreference;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/motorola/settings/BatterySaverUtil;->mBatterySaver:Lcom/motorola/settings/BatterySaverPreference;

    .line 49
    sget-object v0, Lcom/motorola/settings/BatterySaverUtil;->mBatterySaver:Lcom/motorola/settings/BatterySaverPreference;

    const/4 v1, -0x3

    invoke-virtual {v0, v1}, Lcom/motorola/settings/BatterySaverPreference;->setOrder(I)V

    .line 50
    sget-object v0, Lcom/motorola/settings/BatterySaverUtil;->mBatterySaver:Lcom/motorola/settings/BatterySaverPreference;

    sget-object v1, Lcom/motorola/settings/BatterySaverUtil;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b001a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/settings/BatterySaverPreference;->setKey(Ljava/lang/String;)V

    .line 52
    sget-object v0, Lcom/motorola/settings/BatterySaverUtil;->mBatterySaver:Lcom/motorola/settings/BatterySaverPreference;

    new-instance v1, Lcom/motorola/settings/BatterySaverUtil$1;

    invoke-direct {v1}, Lcom/motorola/settings/BatterySaverUtil$1;-><init>()V

    invoke-virtual {v0, v1}, Lcom/motorola/settings/BatterySaverPreference;->setOnPreferenceClickListener(Lcom/motorola/settings/BatterySaverPreference$OnPreferenceClickListener;)V

    .line 72
    sget-object v0, Lcom/motorola/settings/BatterySaverUtil;->mBatterySaver:Lcom/motorola/settings/BatterySaverPreference;

    new-instance v1, Lcom/motorola/settings/BatterySaverUtil$2;

    invoke-direct {v1}, Lcom/motorola/settings/BatterySaverUtil$2;-><init>()V

    invoke-virtual {v0, v1}, Lcom/motorola/settings/BatterySaverPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 79
    sget-object v0, Lcom/motorola/settings/BatterySaverUtil;->mBatterySaver:Lcom/motorola/settings/BatterySaverPreference;

    return-object v0
.end method
