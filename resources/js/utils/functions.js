export function getValueByKey(settings,key) {
    const setting = settings.find(item => item.key_setting === key);
    return setting ? setting.value_setting : null;
}