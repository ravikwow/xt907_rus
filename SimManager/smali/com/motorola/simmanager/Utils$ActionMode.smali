.class public enum Lcom/motorola/simmanager/Utils$ActionMode;
.super Ljava/lang/Enum;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/simmanager/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = "ActionMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/motorola/simmanager/Utils$ActionMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/motorola/simmanager/Utils$ActionMode;

.field public static final enum MODE_DELETE:Lcom/motorola/simmanager/Utils$ActionMode;

.field public static final enum MODE_EXPORT:Lcom/motorola/simmanager/Utils$ActionMode;

.field public static final enum MODE_IMPORT:Lcom/motorola/simmanager/Utils$ActionMode;

.field public static final enum MODE_INVALID:Lcom/motorola/simmanager/Utils$ActionMode;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 27
    new-instance v0, Lcom/motorola/simmanager/Utils$ActionMode$1;

    const-string v1, "MODE_IMPORT"

    invoke-direct {v0, v1, v2}, Lcom/motorola/simmanager/Utils$ActionMode$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/simmanager/Utils$ActionMode;->MODE_IMPORT:Lcom/motorola/simmanager/Utils$ActionMode;

    .line 33
    new-instance v0, Lcom/motorola/simmanager/Utils$ActionMode$2;

    const-string v1, "MODE_EXPORT"

    invoke-direct {v0, v1, v3}, Lcom/motorola/simmanager/Utils$ActionMode$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/simmanager/Utils$ActionMode;->MODE_EXPORT:Lcom/motorola/simmanager/Utils$ActionMode;

    .line 39
    new-instance v0, Lcom/motorola/simmanager/Utils$ActionMode$3;

    const-string v1, "MODE_DELETE"

    invoke-direct {v0, v1, v4}, Lcom/motorola/simmanager/Utils$ActionMode$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/simmanager/Utils$ActionMode;->MODE_DELETE:Lcom/motorola/simmanager/Utils$ActionMode;

    .line 45
    new-instance v0, Lcom/motorola/simmanager/Utils$ActionMode$4;

    const-string v1, "MODE_INVALID"

    invoke-direct {v0, v1, v5}, Lcom/motorola/simmanager/Utils$ActionMode$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/simmanager/Utils$ActionMode;->MODE_INVALID:Lcom/motorola/simmanager/Utils$ActionMode;

    .line 25
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/motorola/simmanager/Utils$ActionMode;

    sget-object v1, Lcom/motorola/simmanager/Utils$ActionMode;->MODE_IMPORT:Lcom/motorola/simmanager/Utils$ActionMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/motorola/simmanager/Utils$ActionMode;->MODE_EXPORT:Lcom/motorola/simmanager/Utils$ActionMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/motorola/simmanager/Utils$ActionMode;->MODE_DELETE:Lcom/motorola/simmanager/Utils$ActionMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/motorola/simmanager/Utils$ActionMode;->MODE_INVALID:Lcom/motorola/simmanager/Utils$ActionMode;

    aput-object v1, v0, v5

    sput-object v0, Lcom/motorola/simmanager/Utils$ActionMode;->$VALUES:[Lcom/motorola/simmanager/Utils$ActionMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/motorola/simmanager/Utils$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lcom/motorola/simmanager/Utils$1;

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/motorola/simmanager/Utils$ActionMode;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getActionMode(Ljava/lang/String;)Lcom/motorola/simmanager/Utils$ActionMode;
    .locals 5
    .param p0, "action"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-static {}, Lcom/motorola/simmanager/Utils$ActionMode;->values()[Lcom/motorola/simmanager/Utils$ActionMode;

    move-result-object v0

    .local v0, "arr$":[Lcom/motorola/simmanager/Utils$ActionMode;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 54
    .local v3, "mode":Lcom/motorola/simmanager/Utils$ActionMode;
    invoke-virtual {v3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 57
    .end local v3    # "mode":Lcom/motorola/simmanager/Utils$ActionMode;
    :goto_1
    return-object v3

    .line 53
    .restart local v3    # "mode":Lcom/motorola/simmanager/Utils$ActionMode;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 57
    .end local v3    # "mode":Lcom/motorola/simmanager/Utils$ActionMode;
    :cond_1
    sget-object v3, Lcom/motorola/simmanager/Utils$ActionMode;->MODE_INVALID:Lcom/motorola/simmanager/Utils$ActionMode;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/simmanager/Utils$ActionMode;
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/motorola/simmanager/Utils$ActionMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/motorola/simmanager/Utils$ActionMode;

    return-object v0
.end method

.method public static values()[Lcom/motorola/simmanager/Utils$ActionMode;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/motorola/simmanager/Utils$ActionMode;->$VALUES:[Lcom/motorola/simmanager/Utils$ActionMode;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/simmanager/Utils$ActionMode;

    return-object v0
.end method
